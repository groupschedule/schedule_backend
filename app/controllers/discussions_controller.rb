class DiscussionsController < ApplicationController
    def index
        render json: Discussion.all
    end

    def show
        discussion=Discussion.find_by(params[:id])
        render json: discussion, status: :ok
    end
end
