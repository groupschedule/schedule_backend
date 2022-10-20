class SessionsController < ApplicationController
    def index
        session=Session.all
        render json: session
    end
end
