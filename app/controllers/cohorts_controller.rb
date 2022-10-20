class CohortsController < ApplicationController
    def index
        cohort=Cohort.all
        render json: cohort
    end
end
