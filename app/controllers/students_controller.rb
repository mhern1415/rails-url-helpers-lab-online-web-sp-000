class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end
  def activate
    student = set_student
    student.toggle_active!
    redirect_to action: "show", id: params[:id]
  end
  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end