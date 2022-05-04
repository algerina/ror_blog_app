class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  # private

  after_create :update_comments_counter

  def update_comments_counter
    post.increment!(:comments_counter)
  end
end
