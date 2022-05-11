class CommentsController < ApplicationController
  def new
    @comments = Comment.new
  end

  def create
    @user = current_user
    @post = Post.find(params[:post_id])
    @comment = Comment.create(post: @post, author: @user, text: params[:text])

    if @comment.valid?
      @comment.save
      # redirect_to user_post_path(id: @post.id, user_id: @user.id)
      flash.notice = 'Comment added successfuly.'
      redirect_to user_post_path(@user.id, @post.id)
    else
      flash.alert = 'Please try again.'
      redirect_to new_user_post_comment_path(@user.id, @post.id)
    end
  end

  def destroy
    @current_user = current_user
    @user = User.find_by(id: params[:user_id])
    @post = @user.posts.find_by(id: params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to user_posts_path(@user.id), success: 'Comment was successfully deleted'
  end

  private

  def post_params
    params.require(:comment).permit(:text)
  end
end
