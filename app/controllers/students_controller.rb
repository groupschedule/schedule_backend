# frozen_string_literal: true

class StudentsController < ApplicationController

    #before_action :authorized
    #skip_before_action :authorize_student, only: [:create, :index]



  # data encoding
  def encode_token(payload)
    JWT.encode(payload, 'my_secr8t')
  end

  # data decoding
  def decode_token
    auth_header_jwt = request.headers['Authorization']
    if auth_header_jwt
      token = auth_header_jwt.split(' ')[1]
      # header is = 'Authorization: 'Bearer <tokens>'
      begin
        JWT.decode(token, 'my_secr8t', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def authorized_student
    decoded_token = decode_token
    if decoded_token
      student_id = decoded_token[0]['student_id']
      student = Student.find_by(id: student_id)
    end
  end

  def student_logged_in?
    !!authorized_student
  end

  def authorize_student
    render json: { message: 'Student only.' }, status: :unauthorized unless student_logged_in?
  end


def create
    student = Student.create(student_params)
    if student.valid?
        token = encode_token({ student_id: student.id})
        render json: { student: student, token: token }, status: :created

  
    else
      render json: { error: 'Invalid email or password' }, status: :unprocessable_entity
    end
  end



def login 
    student = Student.find_by(email: params[:email])
    #Student#authenticate comes from BCrypt
    if student && student.authenticate(params[:password])
        #encode token is from ApplicationController
        token = encode_token({ student_id: student.id })
        render json: { student: student, token: token}, status: :accepted

    else
      render json: { error: 'Invalid email or password' }, status: :unprocessable_entity
    end
  end


def index
    students = Student.all
    render json: students
end


  def show
    student = Student.find_by(params[:id])
    render json: student, status: :ok
  end

  def logout
    session.delete(:email)
    render json: {
      message: 'Goodbye, see you again'
    }, status: 200
  end

  private


def student_params
    params.permit(:email, :name, :cohort_id, :password, :phone, :image, :password_confirmation)
end
end






  
