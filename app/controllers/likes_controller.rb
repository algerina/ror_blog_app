class LikesController < ApplicationController

    def create
        # @current_user = User.find(params[:user_id])
        # @user_id = params[:user_id]
        # @post_id = params[:post_id]
        @post = Post.find(params[:post_id])
        @user = User.find(params[:user_id])
    
        @like = @post.likes.new(author: @user)
    
        if @like.save
          flash[:notice] = 'Like!'
          redirect_to user_post_path(@post.author, @post)
        else
          flash[:notice] = 'Not liked.'
        end
      end

end
