require 'rails_helper'

RSpec.describe 'User post index page', type: :system do
  before do
    User.create(id: 1, name: 'name', email: 'name@name.com', bio: 'Artist from Dreamland',
                photo: 'https://randomuser.me/api/portraits/women/50.jpg',
                password: 'password', posts_counter: 0)

    Post.create(id: 1, author_id: 1, title: 'Test 1', text: 'Testing whith Capybera ', comments_counter: 0,
                likes_counter: 0)

    Post.create(id: 2, author_id: 1, title: 'Test 2', text: 'Testing whith Capybera ', comments_counter: 0,
                likes_counter: 0)

    Post.create(id: 3, author_id: 1, title: 'Test 3', text: 'Testing whith Capybera ', comments_counter: 0,
                likes_counter: 0)

    Post.create(id: 4, author_id: 1, title: 'Test 4', text: 'Testing whith Capybera', comments_counter: 0,
                likes_counter: 0)

    Comment.create(author_id: 1, post_id: 2, text: 'I like Capybera')

    Like.create(author_id: 1, post_id: 1)
  end

  describe 'Visiting the post index page' do
    before :each do
      visit '/users/1/posts'
    end

    it "should display the user's username" do
      expect(page).to have_text('name')
    end

    it "should display the user's profile picture" do
      expect(page).to have_css('img')
    end

    it 'should display the number of posts of user' do
      expect(page).to have_text('Number of posts: 4')
    end

    it 'should display the Title of user' do
      expect(page).to have_text('Test 1')
    end

    it "should display some text of the post's body" do
      expect(page).to have_text('Testing whith Capybera')
    end

    it 'should display recent comments' do
      expect(page).to have_text('I like Capybera')
    end

    it 'should display the number of comments of the post' do
      expect(page).to have_text('Comments: 1')
    end

    it 'should display the number of likes of the post' do
      expect(page).to have_text('Likes: 1')
    end

    it 'should redirect to post show page when clicking a post' do
      click_link('Test 1')
      expect(page).to have_current_path('/users/1/posts/1')
    end
  end
end
