class AtteendesController < ApplicationController
  before_action :authenticate_user!

  # POST /atteendes or /atteendes.json
  def create
    @atteende = Attendee.new(atteende_params)

    respond_to do |format|
      if @atteende.save
        format.html { redirect_to event_path(atteende_params[:attended_event_id]), notice: "atteende was successfully created." }
        format.json { render :show, status: :created, location: @atteende }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atteende.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /atteendes/1 or /atteendes/1.json
  def update
    respond_to do |format|
      if @atteende.update(atteende_params)
        format.html { redirect_to root_path, notice: 'atteende was successfully updated.' }
        format.json { render :show, status: :ok, location: @atteende }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atteende.errors, status: :unprocessable_entity }
      end
    end
  end

  def desuscribe
    # event -> usuario, id of the event
    # Del if the creator of the event the desuscribe at the user
    # 1. Get user sended
    # 2. Get event 
    # 3. Look zls
  end
  
  # DELETE /atteendes/1 or /atteendes/1.json
  def destroy
    # event -> usuario, id of
    respond_to do |format|
      if current_user.id == atteende_params[:attendee_id].to_i
        attendance = Attendee.where(atteende_params)
        if attendance.length > 0
          Attendee.destroy(attendance[0].id)
          format.html { redirect_to event_path(atteende_params[:attended_event_id]), notice: "atteende was successfully destroyed." }
          format.json { head :no_content }
        else
          format.html { redirect_to root_path, notice: "atteende wasn't successfully destroyed. :c" }
          format.json { head :no_content }
        end
      else
        format.html { redirect_to root_path, notice: "Not is the same user. :c" }
        format.json { head :no_content }
      end
    end
  end
  
  private

    # Use callbacks to share common setup or constraints between actions.
    def set_atteende
      @atteende = atteende.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def atteende_params
      params.fetch(:atteende, {}).permit(:attendee_id, :attended_event_id)
    end
end
