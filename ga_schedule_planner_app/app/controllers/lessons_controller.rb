class LessonsController < ApplicationController
  
  load_and_authorize_resource


  def show
    
  end

  def index 
  
  end

  def new 
    
  end

  def create
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  def my_lessons
    
    @lessons = Lesson.joins(:enrollments).where('enrollments.student_id = ' + current_user.id.to_s)
    # enrollments = Enrollment.where(student_id: current_user.id.to_s)
    # @lessons = Lesson.where()
    render :index
  end

end