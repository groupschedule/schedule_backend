class AnnouncementsController < ApplicationController
    def index
        announcement=Announcement.all
        render json: announcement
    end


    # def create
    #     comment=@current_tm.announcements.create!(announcement_params)
    #     render json: announcement, status: :created
    # end






    # private

    # def announcement_params
    #     params.permit(:technical_mentor_id, :session_id, :description)
    # end
end







