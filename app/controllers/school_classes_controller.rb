class SchoolClassesController < ApplicationController
  def new 
    @school_class = SchoolClass.new
  end 
  
  def show
    @school_class = set_school_class
  end 
  
  def edit 
    @school_class = set_school_class
  end 
  
  def create
    school_class = SchoolClass.create(post_params)
    redirect_to school_class_path(school_class)
  end 
  
  def update 
    @school_class = set_school_class
  end 
  
  private 
  
  def post_params
    params.require(:school_class).permit(:title, :room_number)
  end 
  
  def set_school_class
    SchoolClass.find(params[:id])
  end 
end 