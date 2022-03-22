# require 'rails_helper'

# RSpec.describe "HelloWorlds", type: :request do
#   describe "GET /index" do
#     it "returns http success" do
#       get "/hello_world/index"
#       expect(response).to have_http_status(:success)
#     end
#   end

# end

require 'rails_helper'

RSpec.describe 'Hello world', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      visit hello_world_index_path
      expect(page).to have_content('Hello, world!')
    end
  end
end