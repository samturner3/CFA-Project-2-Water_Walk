class AdminController < ApplicationController
  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.toggle!(:admin)
    flash[:success] = 'OK!'
    redirect_to root_path
  end

  def user_posts
  end

  # def toggle
  #    @membership = User.find(params[:id])
  #    @membership.toggle!(verified_status)
  # end
end
