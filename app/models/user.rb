class User < ApplicationRecord
  has_many :comments, foreign_key: 'author_id'
  has_many :posts, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  def most_recent_posts
    posts.order(created_at: :desc).limit(3)
  end

  validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
