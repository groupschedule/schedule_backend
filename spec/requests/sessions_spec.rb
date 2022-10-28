require 'rails_helper'
RSpec.describe "Sessions", type: :request do
  describe "GET /sessions" do
    it "returns http success" do
      get "/sessions"
      expect(response).to have_http_status(:success)
    end
  end
  # getting a single session
  describe "GET /show/:id" do
    it "returns http success" do
      get "/sessions/id"
      expect(response).to have_http_status(:success)
    end
  end
  # post a new session
  describe "POST /create" do
    it "returns http success" do
      post "/sessions"
      expect(response).to have_http_status(:success)
    end
  end
  # update a new session
  describe "PATCH /patch" do
    it "returns http success" do
      get "/sessions/id"
      expect(response).to have_http_status(:success)
    end
  end
  # delete a new session
  describe "DELETE /destroy" do
    it "returns http success" do
      get "/sessions/id"
      expect(response).to have_http_status(:success)
    end
  end
end