class DiscussionsController < ApplicationController
    def index
        render json: Discussion.all
    end

    def show
        discussion=Discussion.find_by(params[:id])
        render json: discussion, status: :ok
    end

    def create
        discussion=Discussion.create!(discussion_params)
        render json: discussion, status: :created
    end

    private

    def discussion_params
        params.permit(:title, :description)
    end
end
