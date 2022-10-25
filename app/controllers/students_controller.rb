class StudentsController < ApplicationController
    def index
        student=Student.all
        render json: student
    end

    def create
        student=@current_tm.students.create!(student_params)
        render json: student, status: :created
    end

    private

    def student_params
        params.permit(:cohort_id, :name, :email, :phone)
    end
end
