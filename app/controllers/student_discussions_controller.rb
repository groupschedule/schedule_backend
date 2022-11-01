class StudentDiscussionsController < ApplicationController
    def index
        render json: StudentDiscussion.all
    end

    def show
        discussion=StudentDiscussion.find_by(params[:id])
        render json: discussion, status: :ok
    end

    def create
        discussion=StudentDiscussion.create(st_discussion_params)
        render json: discussion, status: :created
    end

    private

    def st_discussion_params
        params.permit(:discussion_id, :student_id, :comment)
    end
end
