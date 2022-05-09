class UsersController < ApplicationController


  def index
    @users = User.all
    @user = current_user
  end

  def show
    @user = current_user
    # @user = User.find(params[:id])
    @posts = @user.most_recent_posts
  end
end
