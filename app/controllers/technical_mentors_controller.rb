class TechnicalMentorsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index
        technical_mentors=TechnicalMentor.all
        render json: technical_mentors
    end

    def create
        technical_mentor=@current_tm.technical_mentors.create!(technical_mentor_params)
        render json: technical_mentor, status: :created

        @technical_mentor = TechnicalMentor.create(technical_mentor_params)
        if @technical_mentor.valid?
            @token = encode_token(technical_mentor_id: @technical_mentor_id)
            render json: { technical_mentor: TechnicalMentorSerializer.new(@technical_mentor), jwt: @token }, status: :created
        else
            render json: { error: 'Invalid email or password' }, status: :unprocessable_entity
        end
    end


    @technical_mentor = TechnicalMentor.find_by(email: technical_mentor_login_params[:email])
    #Student#authenticate comes from BCrypt
    if @technical_mentor && @technical_mentor.authenticate(technical_mentor_login_params[:password])
        #encode token is from ApplicationController
        token = encode_token({ technical_mentor_id: @technical_mentor.id})
        render json: { technical_mentor: TechnicalMentorSerializer.new(@technical_mentor), jwt: token}, status: :accepted
    else
        render json: { message: 'Invalid email or password' }, status: :unprocessable_entity
    end
end

def logout
    session.delete(:email)
    render json: {
        message: 'Goodbye, see you again'
    }, status: 200
end


private

    def technical_mentor_params
        params.require(:technical_mentor).permit(:name, :email, :phone)
    end


    def technical_mentor_login_params 
        # params { student: {email: 'ianokumu@gmail.com', password: 'Heyguyz254' }}
        params.(:technical_mentor).permit(:email, :password)
    end
end


