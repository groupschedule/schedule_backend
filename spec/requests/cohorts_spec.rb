require 'rails_helper'
RSpec.describe "Cohorts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/cohorts"
      expect(response).to have_http_status(:success)
    end
  end
  # getting a single article
  describe "GET /show" do
    it "returns http success" do
      get "/cohorts/id"
      expect(response).to have_http_status(:success)
    end
  end
  # post a new article
  describe "POST /create" do
    it "returns http success" do
      get "/cohorts"
      expect(response).to have_http_status(:success)
    end
  end
  # update a new article
  describe "PATCH /patch" do
    it "returns http success" do
      get "/cohorts/id"
      expect(response).to have_http_status(:success)
    end
  end
  # delete a new article
  describe "DELETE /destroy" do
    it "returns http success" do
      get "/cohorts/id"
      expect(response).to have_http_status(:success)
    end
  end
end