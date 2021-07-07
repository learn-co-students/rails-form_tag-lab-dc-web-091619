class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  @students=Student.new
  end

  def create
    
    # a = params[:first_name]
    # b= params[:last_name]

    a= params[:student][:first_name]

    b= params[:student][:last_name]
    @student= Student.create(first_name: a, last_name: b)

    redirect_to student_path(@student.id)

  end

end
