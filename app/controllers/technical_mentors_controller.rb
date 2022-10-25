class TechnicalMentorsController < ApplicationController
    def index
        technical_mentor=TechnicalMentor.all
        render json: technical_mentor
    end

    def create
        technical_mentor=@current_tm.technical_mentors.create!(technical_mentor_params)
        render json: technical_mentor, status: :created
    end

    private

    def technical_mentor_params
        params.permit(:name, :email, :phone)
    end
end
