require 'rails_helper'

RSpec.describe "TagCreations", type: :request do

  describe "GET /Tag_setup" do
    it "returns http success" do
      get "/tag_creation/Tag_setup"
      expect(response).to have_http_status(:success)
    end
  end

end
