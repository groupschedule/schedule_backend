class CommentsController < ApplicationController
    def index
        comment=Comment.all
        render json: comment
    end

    def create
        comment=Comment.create!(comment_params)
        render json: comment, status: :created
    end

    private

    def comment_params
        params.permit(:student_id, :session_id, :description)
    end
end
