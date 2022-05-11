require 'rails_helper'

RSpec.describe 'Post show page', type: :system do
  before do
    User.create(id: 1, name: 'name', email: 'name@name.com', bio: 'Artist from Dreamland',
                photo: 'https://randomuser.me/api/portraits/women/50.jpg',
                password: 'password', posts_counter: 0)

    User.create(id: 2, name: 'amel', email: 'amel@amel.com', bio: 'Artist',
                photo: 'https://randomuser.me/api/portraits/women/50.jpg',
                password: 'aaaaaa', posts_counter: 0)

    Post.create(id: 1, author_id: 1, title: 'Test 1', text: 'I like Capybera', comments_counter: 0,
                likes_counter: 0)

    Comment.create(author_id: 2, post_id: 1, text: 'I like Capybera')

    Like.create(author_id: 1, post_id: 1)
    Like.create(author_id: 2, post_id: 1)
  end

  describe 'Visiting the post show page' do
    before :each do
      visit '/users/1/posts/1'
    end

    it 'should display the title of the post' do
      expect(page).to have_text('Test 1')
    end

    it 'should display the name of the author' do
      expect(page).to have_text('name')
    end

    it 'should display the body of the posts' do
      expect(page).to have_text('I like Capybera')
    end

    it 'should display how many comments the post has' do
      expect(page).to have_text('Comments: 1')
    end

    it 'should display how many comments the post has' do
      expect(page).to have_text('Likes: 2')
    end

    it 'should display comments' do
      expect(page).to have_text('I like Capybera')
    end

    it 'should display the name onf the commentor' do
      expect(page).to have_text('amel')
    end
  end
end
