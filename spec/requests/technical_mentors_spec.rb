# frozen_string_literal: true

require 'rails_helper'
RSpec.describe 'TechnicalMentor', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/technical_mentors'
      expect(response).to have_http_status(:success)
    end
  end
  # post a new technical_mentor
  describe 'POST /create' do
    it 'returns http success' do
      get '/technical_mentors'
      expect(response).to have_http_status(:success)
    end
  end
end
