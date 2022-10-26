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

RSpec.describe "TechnicalMentor", type: :request do
  before do
    TechnicalMentor.create(name: 'Ian Okumu', email: "ianokumu@gmail.com", phone: 254722567890)
    
  end

  describe "routes" do
    it 'does not create unused routes' do
      expect { patch "/technical_mentors/1" }.to raise_error(ActionController::RoutingError)
    end
  end

  describe "GET /technical_mentors" do
    it 'returns an array of all technical_mentors' do
      get '/technical_mentors'

      expect(response.body).to include_json([
        { id: a_kind_of(Integer), name: 'Ian Okumu', email: "ianokumu@gmail.com", phone: 254722567890 }
      ])
    end
  end

  describe "POST /technical_mentors" do
    let!(:technical_mentor_params) { { name: 'Ian Okumu', email: "ianokumu@gmail.com", phone: 254722567890 } }

    it 'creates a new technical mentor' do
      expect { post '/technical_mentors', params: technical_mentor_params }.to change(TechnicalMentor, :count).by(1)
    end

    it 'returns the technical_mentor data' do
      post '/technical_mentors', params: technical_mentor_params

      expect(response.body).to include_json({
        id: a_kind_of(Integer),
        name: 'Ian Okumu', 
        email: "ianokumu@gmail.com", 
        phone: 254722567890
      })
    end

    it 'returns a status code of 201 (created)' do
      post '/technical_mentors', params: technical_mentor_params

      expect(response).to have_http_status(:created)
    end
  end

end
