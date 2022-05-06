class CommentsController < ApplicationController
  def new
    @comments = Comment.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.create(post: @post, author: @user, text: params[:text])

    if @comment.valid?
      @comment.save
      redirect_to user_post_path(id: @post.id, user_id: @user.id)
    else
      redirect_to new_user_post_comment_path(@user.id, @post.id)
    end
  end

  def post_params
    params.require(:comment).permit(:text)
  end
end
