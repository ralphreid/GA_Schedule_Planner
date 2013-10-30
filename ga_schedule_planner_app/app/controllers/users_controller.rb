class UsersController < ApplicationController
  
  load_and_authorize_resource


  def show
    
  end

  def index 
    @users = User.all
  end

  def new 
    # @user = User.create
  end

  def create
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "thank you for signing up"
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

end