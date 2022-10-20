class TechnicalMentorsController < ApplicationController
    def index
        technical_mentor=TechnicalMentor.all
        render json: technical_mentor
    end
end
