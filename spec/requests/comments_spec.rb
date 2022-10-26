# require 'rails_helper'
# RSpec.describe "Students", type: :request do
#   describe "GET /index" do
#     it "returns http success" do
#       get "/students"
#       expect(response).to have_http_status(:success)
#     end
#   end
#   # post a new student
#   describe "POST /create" do
#     it "returns http success" do
#       get "/students"
#       expect(response).to have_http_status(:success)
#     end
#   end
# end


require 'rails_helper'

RSpec.describe "Comments", type: :request do
  before do
    Comment.create(student_id: 1, session_id: 1, description: "I loved the session")
  end

  describe "routes" do
    it 'does not create unused routes' do
      expect { patch "/comments/1" }.to raise_error(ActionController::RoutingError)
    end
  end

  describe "GET /comments" do
    it 'returns an array of all comments' do
      get '/comments'

      #is student_id and session_id included? find out!

      expect(response.body).to include_json([
        { id: a_kind_of(Integer), student_id: a_kind_of(Integer), session_id: a_kind_of(Integer), description: 'I loved the session'}
        
      ])
    end
  end

  describe "POST /comments" do
    let!(:comment_params) { { student_id: 1, session_id: 1, description: 'I loved the session' } }

    it 'creates a new comment' do
      expect { post '/comments', params: comment_params }.to change(Comment, :count).by(1)
    end

    it 'returns the comment data' do
      post '/comments', params: comment_params

      expect(response.body).to include_json({
        id: a_kind_of(Integer),
        student_id: a_kind_of(Integer),
        session_id: a_kind_of(Integer), 
        description: 'I loved the session',
      })
    end

    it 'returns a status code of 201 (created)' do
      post '/comments', params: comment_params

      expect(response).to have_http_status(:created)
    end
  end

end