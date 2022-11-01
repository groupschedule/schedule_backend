# frozen_string_literal: true

class TechnicalMentorsController < ApplicationController

    #before_action :authorized
    #skip_before_action :authorize_technical_mentor, only: [:create, :index]


  # data encoding
  def encode_token(payload)
    JWT.encode(payload, 'my_secr8t')
  end

  # data decoding
  def decode_token
    auth_header_jwt = request.headers['Authorization']
    if auth_header_jwt
      token = auth_header_jwt.split(' ')[1]
      # header is = {'Authorization: 'Bearer <token>'}
      begin
        JWT.decode(token, 'my_secr8t', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def authorized_technical_mentor
    decoded_token = decode_token
    if decoded_token
      technical_mentor_id = decoded_token[0]['technical_mentor_id']
      technical_mentor = TechnicalMentor.find_by(id: technical_mentor_id)
    end
  end

  def technical_mentor_logged_in?
    !!authorized_technical_mentor
  end

  def authorize_technical_mentor
    render json: { message: 'Technical Mentor only.' }, status: :unauthorized unless technical_mentor_logged_in?
  end


def create
    technical_mentor = TechnicalMentor.create(technical_mentor_params)
    if technical_mentor.valid?
        token = encode_token({ technical_mentor_id: technical_mentor.id})
        render json: { technical_mentor: technical_mentor, token: token }, status: :created

  
    else
      render json: { error: 'Invalid email or password' }, status: :unprocessable_entity
    end
  end

  def login
    technical_mentor = TechnicalMentor.find_by(email: params[:email])

    #TechnicalMentor#authenticate comes from BCrypt
    if technical_mentor && technical_mentor.authenticate(params[:password])
        token = encode_token({ technical_mentor_id: technical_mentor.id })
        render json: { technical_mentor: technical_mentor, token: token}, status: :accepted

  
    else
      render json: { error: 'Invalid email or password' }, status: :unprocessable_entity
    end
  end

  def index
    render json: TechnicalMentor.all
  end

  def logout
    session.delete(:email)
    render json: {
      message: 'Goodbye, see you again'
    }, status: 200
  end

  private


def technical_mentor_params
    params.permit(:email, :name, :phone, :password, :password_confirmation)
end
end
