require 'rails_helper'

RSpec.describe Like, type: :model do
  before do
    User.create(id: 1, name: 'User 1', posts_counter: 0)
    Post.create(id: 1, author_id: 1, title: 'Test', text: 'This is just a test', comments_counter: 0,
                likes_counter: 0)
  end

  it 'should update the post likes_counter when created' do
    Like.create(post_id: 1, author_id: 1)
    expect(Post.take.likes_counter).to eq 1
  end
end
