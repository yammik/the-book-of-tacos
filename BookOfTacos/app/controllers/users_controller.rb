class UsersController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorize, only: [:new, :create]

  def show

  end

  def new
    #sign up page
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    sessions[:user_id] = @user.id
    redirect_to @user
  end

  def edit

  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    flash[:notice] = 'You deleted your account.'
    redirect_to new_user_path
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name)
  end

end
