require 'rails_helper'

RSpec.describe "Announcements", type: :request do
  before do
    Announcement.create(technical_mentor_id: 1, session_id: 1, description: "Session has been cancelled")
  end

  describe "routes" do
    it 'does not create unused routes' do
      expect { patch "/annoucements/1" }.to raise_error(ActionController::RoutingError)
    end
  end
  

  describe "GET /index" do
    it 'returns an array of all announcements' do
      get '/announcements'
    end
end
end
