import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for the Dropdown Reflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  /*
   * Regular Stimulus lifecycle methods
   * Learn more at: https://stimulusjs.org/reference/lifecycle-callbacks
   *
   * If you intend to use this controller as a regular stimulus controller as well,
   * make sure any Stimulus lifecycle methods overridden in ApplicationController call super.
   *
   * Important:
   * By default, StimulusReflex overrides the -connect- method so make sure you
   * call super if you intend to do anything else when this controller connects.
  */
  static targets = ["results"]

  connect () {
    super.connect()
    // add your code here, if applicable
    console.log('Esta ejecutandose el connect de DropdownController')
  }

  change() {
    console.log('CHANGE')

    const el = this.element;

    document.getElementById(el.dataset.inputId).value = el.textContent;
    document.getElementById(el.dataset.dropdownId).checked = false;
  }

  delSearch(e) {
    console.log('DEL')

    e.preventDefault();
    const el = this.element;
    document.getElementById(el.dataset.inputId).value = '';
  }

  openOnlyOne() {
    console.log('OPEN ONLY ONE')
    const dropdowns = Array.from(document.getElementsByClassName("dropdowns"));
    const lastElemClicked = this.element
    const numOpenCurrent = dropdowns.filter(el => el.checked === true).length;
    if (numOpenCurrent > 1) {
      dropdowns.forEach(el => {
        if (el.id === lastElemClicked.id) {
          el.checked = true;
        } else {
          el.checked = false;
        }
      });
    }
  }

  autocomplete(e) {
    console.log("Results: ", this.results);
  }

  submit(e) {
    e.preventDefault();
    document.getElementById('search-flights').submit();
  } 
}
