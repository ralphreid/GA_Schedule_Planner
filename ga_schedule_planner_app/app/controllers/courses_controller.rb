class CoursesController < ApplicationController
  
  load_and_authorize_resource


  def show
    
  end

  def index 
    @courses = Course.all
  end

  def new 
    
  end

  def create
    
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    
  end

  def destroy
    
  end

end