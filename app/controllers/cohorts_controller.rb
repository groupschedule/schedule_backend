# frozen_string_literal: true

class CohortsController < ApplicationController
  def index
    render json: Cohort.all, include: :students, status: :ok
  end

  def show
    cohort = Cohort.find_by(params[:id])
    render json: cohort, include: :students, status: :ok
  end

  def update
    cohort = Cohort.find_by(id: params[:id])
    cohort.update(name: params[:name], description: params[:description])
    render json: cohort, status: :accepted
  end

  def create
    cohort = Cohort.create(cohort_params)
    render json: cohort, status: :created
  end

  def destroy
    cohort = Cohort.find_by(id: params[:id])
    cohort.destroy
    render json: {}, status: :no_content
  end

  private

  def cohort_params
    params.permit(:name, :technical_mentor_id, :description)
  end
end
