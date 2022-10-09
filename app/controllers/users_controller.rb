class UsersController < ApplicationController
  before_action :set_user, only: %i[show create edit update destroy]

  def index; end

  def show; end

  def new
    @user = User.new
  end

  def create;end

  def edit; end

  def update; end

  def destroy; end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :avatar)
  end
end
