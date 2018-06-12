class StudentsController < ApplicationController
  
  def new 
    @student = Student.new
  end 
  
  def show
    @student = set_student
  end 
  
  def edit 
    @student = set_student
  end 
  
  def create
    raise params.inspect
  end 
  
  def update 
    @student = set_student
  end 
  
  private 
  
  def post_params
    params.require(:student).permit(:first_name, :last_name)
  end 
  
  def set_student
    Student.find(params[:id])
  end 
end 