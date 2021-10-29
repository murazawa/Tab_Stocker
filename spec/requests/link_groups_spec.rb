require 'rails_helper'

RSpec.describe "LinkGroups", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/link_groups/show"
      expect(response).to have_http_status(:success)
    end
  end

end
