class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    render :new
  end

  def create
    # find out if theres a user with this Username
    # get that user record from db
    # authenticate this user via password
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password]) # gives back user intstance or false
      # once we have found the user, create a new session for them
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:notice] = 'Invalid username or password'
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'You have been logged out'
    redirect_to login_path
  end



end
