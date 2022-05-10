class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments)
  end

  def show
    @user_id = params[:user_id]
    @post_id = params[:id]
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @current_user = current_user
    post = Post.new(post_params.merge(author_id: @current_user.id, comments_counter: 0, likes_counter: 0))
    if post.valid?
      post.save
      flash[:notice] = 'Post was successfully created'
    else
      # redirect_to new_user_post_path(@current_user.id)
      flash.alert = "Couldn't add the post."

    end
    redirect_to user_path(@current_user.id)
  end

  def destroy
    @current_user = current_user
  @user = User.find_by(id: params[:user_id])
  @post = @user.posts.find_by(id: params[:id])
  @post.destroy
  redirect_to user_posts_path(@user.id), success: 'Post was successfully deleted'
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
