class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @user = current_user

    @like = @post.likes.new(author: @user)

    if @like.save
      flash[:notice] = 'Like!'
      redirect_to user_post_path(@post.author, @post)
    else
      flash[:notice] = 'Not liked.'
    end
  end
end
