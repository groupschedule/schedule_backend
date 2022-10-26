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

RSpec.describe "Students", type: :request do
  before do
    Student.create(cohort_id: 1, name: 'David Mwenje', email: "davidmwenje@gmail.com", phone: 254701222333)
    Student.create(cohort_id: 2, name: 'Joshua Mwale', email: 'mwalejoshua89@gmail.com', phone: 254719077176)
  end

  describe "routes" do
    it 'does not create unused routes' do
      expect { patch "/students/1" }.to raise_error(ActionController::RoutingError)
    end
  end

  describe "GET /students" do
    it 'returns an array of all students' do
      get '/students'

      #is cohort_id included? find out!

      expect(response.body).to include_json([
        { id: a_kind_of(Integer), cohort_id: a_kind_of(Integer), name: 'David Mwenje', email: 'davidmwenje@gmail.com', phone: 254701222333 },
        { id: a_kind_of(Integer), cohort_id: a_kind_of(Integer), name: 'Joshua Mwale', email: 'mwalejoshua89@gmail.com', phone: 254719077176}
      ])
    end
  end

  describe "POST /students" do
    let!(:student_params) { { cohort_id: 1, name: 'David Mwenje', email: 'davidmwenje@gmail.com', phone: 254701222333 } }

    it 'creates a new student' do
      expect { post '/students', params: student_params }.to change(Student, :count).by(1)
    end

    it 'returns the student data' do
      post '/students', params: student_params

      expect(response.body).to include_json({
        id: a_kind_of(Integer),
        cohort_id: a_kind_of(Integer),
        name: 'David Mwenje', 
        email: 'davidmwenje@gmail.com',
        phone: 254701222333
      })
    end

    it 'returns a status code of 201 (created)' do
      post '/students', params: student_params

      expect(response).to have_http_status(:created)
    end
  end

end
