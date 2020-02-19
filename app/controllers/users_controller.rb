class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @vice = Vice.all
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
