require 'rails_helper'

RSpec.describe "MyLinks", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/my_links/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/my_links/show"
      expect(response).to have_http_status(:success)
    end
  end

end
