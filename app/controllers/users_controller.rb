class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.most_recent_posts
  end

  def new
    respond_to do |format|
      format.html { render :new }
    end
  end

end
