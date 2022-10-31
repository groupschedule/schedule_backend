class StudentDiscussionsController < ApplicationController
    def index
        render json: StudentDiscussion.all
    end

    def show
        discussion=StudentDiscussion.find_by(params[:id])
        render json: discussion, status: :ok
    end
end
