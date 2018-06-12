class SchoolClassesController < ApplicationController
  def new 
  end 
  
  def show
    @school_class = set_school_class
  end 
  
  def edit 
    @school_class = set_school_class
  end 
  
  def create
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