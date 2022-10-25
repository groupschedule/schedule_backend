class SessionsController < ApplicationController
    def index
        render json: Session.all
    end

    def show
        session=Session.find_by!(id:params[:id])
        render json: session, status: :ok
    end

    def update
        session=Session.find_by!(id:params[:id])
        session.update!(link: params[:link])
        render json: session, status: :accepted
    end

    def create
        session=@current_tm.sessions.create!(session_params)
        render json: session, status: :created
    end

    def destroy
        session=Session.find_by!(id: params[:id])
        session.destroy
        render json: {}, status: :no_content
    end

    private

    def session_params
        params.permit(:cohort_id, :technical_mentor_id, :date, :link)
    end

end
