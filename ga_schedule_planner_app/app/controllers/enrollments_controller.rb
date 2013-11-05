class EnrollmentsController < ApplicationController
  
  load_and_authorize_resource


  def show
    
  end

  def index 
    # @enrollments = Enrollment.all
  end

  def enroll
    enrollment = Enrollment.new(student_id: current_user.id, lesson_id: params[:id] )
    enrollment.save
    redirect_to courses_path
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