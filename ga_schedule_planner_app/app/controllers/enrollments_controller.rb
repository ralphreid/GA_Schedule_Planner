class EnrollmentsController < ApplicationController
  
  load_and_authorize_resource


  def show
    
  end

  def index 
    # @enrollments = Enrollment.all
  end

  def new 
    
  end

  def create
    
  end

  def edit
    
  end

  def update
    redirect_to enrollments_path
  end

  def destroy
    
  end

end