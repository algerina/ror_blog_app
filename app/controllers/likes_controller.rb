class LikesController < ApplicationController

    def create
        @current_user = User.find(params[:user_id])
        @user_id = params[:user_id]
        @post_id = params[:post_id]
        if liked?
          redirect_to user_post_path(@user_id, @post_id)
          return
        else
          Like.create(author_id: @current_user.id, post_id: @post_id)
        end
        redirect_to user_post_path(@user_id, @post_id)
      end

      private

      def liked?
        Like.find_by(author_id: @current_user.id, post_id: @post_id).present?
      end

end
