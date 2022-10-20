class AnnouncementsController < ApplicationController
    def index
        announcement=Announcement.all
        render json: announcement
    end
end
