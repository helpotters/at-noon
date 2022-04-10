require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/event/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/event/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/event/show"
      expect(response).to have_http_status(:success)
    end
  end

end
