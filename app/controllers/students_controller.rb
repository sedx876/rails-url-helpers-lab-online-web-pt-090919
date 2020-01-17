class StudentsController < ApplicationController
  #before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    student_path (@student)
  end

  private

  def activate
    @student = Student.find(params[:id])
    @student.activate
    redirect_to student_path(@student)
  end
end
