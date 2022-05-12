class ApiController < ApplicationController
  protect_from_forgery with: :null_session

  def index_posts
    render json: Post.all
  end

  def post_comments
    render json: Comment.where(post_id: params[:post_id])
  end

  def create_comments
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]
    @comment.author_id = params[:user_id]

    if @comment.save
      render json: { status: 201, message: 'Comment creation success!', content: { comment: @comment } }
    else
      render json: @comment.errors, status: :bad_request, message: 'Failed!'
    end
  end
end

        private

def comment_params
  params.permit(:text)
end
