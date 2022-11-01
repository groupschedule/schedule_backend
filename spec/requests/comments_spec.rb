# frozen_string_literal: true

require 'rails_helper'
RSpec.describe 'Comments', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/comments'
      expect(response).to have_http_status(:success)
    end
  end
  # post a new comment
  describe 'POST /create' do
    it 'returns http success' do
      get '/comments'
      expect(response).to have_http_status(:success)
    end
  end
end
