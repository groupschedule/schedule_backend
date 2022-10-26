class AnnouncementsController < ApplicationController
    def index
        announcement=Announcement.all
        render json: announcement
    end





    # private

    # def announcement_params
    #     params.permit(:technical_mentor_id, :session_id, :description)
    # end
end







