require 'rails_helper'

RSpec.describe "TabCollections", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tab_collections/index"
      expect(response).to have_http_status(:success)
    end
  end

end
