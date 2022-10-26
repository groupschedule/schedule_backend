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

  describe "GET /announcements" do
    it 'returns an array of all announcements' do
      get '/announcements'

      #is student_id and session_id included? find out!

      expect(response.body).to include_json([
        { 
            id: a_kind_of(Integer), 
            technical_mentor_id: a_kind_of(Integer), 
            session_id: a_kind_of(Integer), 
            description: 'Session has been cancelled'}
        
      ])
    end
  end

#   describe "POST /announcements" do
#     let!(:announcement_params) { { technical_mentor_id: 1, session_id: 1, description: 'Session has been cancelled' } }

#     it 'creates a new announcement' do
#       expect { post '/announcements', params: announcement_params }.to change(Announcement, :count).by(1)
#     end

#     it 'returns the announcement data' do
#       post '/announcements', params: announcement_params

#       expect(response.body).to include_json({
#         id: a_kind_of(Integer),
#         technical_mentor_id: a_kind_of(Integer),
#         session_id: a_kind_of(Integer), 
#         description: 'Session has been cancelled',
#       })
#     end

#     it 'returns a status code of 201 (created)' do
#       post '/announcements', params: announcement_params

#       expect(response).to have_http_status(:created)
#     end
#   end

# end
