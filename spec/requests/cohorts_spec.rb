require 'rails_helper'
RSpec.describe "Cohorts", type: :request do
  describe "GET /cohorts" do
    it "returns http success" do
      get "/cohorts"
      expect(response).to have_http_status(:success)
    end
  end
  # getting a single cohort
  describe "GET /show/:id" do
    it "returns http success" do
      get "/cohorts/id"
      expect(response).to have_http_status(:success)
    end
  end
  # post a new cohort
  describe "POST /create" do
    it "returns http success" do
      post "/cohorts"
      expect(response).to have_http_status(:success)
    end
  end
  # update a new cohort
  describe "PATCH /patch" do
    it "returns http success" do
      get "/cohorts/id"
      expect(response).to have_http_status(:success)
    end
  end
  # delete a new cohort
  describe "DELETE /destroy" do
    it "returns http success" do
      get "/cohorts/id"
      expect(response).to have_http_status(:success)
    end
  end
end