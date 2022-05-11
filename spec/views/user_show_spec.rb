require 'rails_helper'

RSpec.describe 'User show page', type: :system do
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
  end

  describe 'Visiting the users show page' do
    before :each do
      visit '/users/1'
    end

    it 'should display the username of user' do
      expect(page).to have_text('name')
    end

    it 'should display the profile picture of user' do
      expect(page).to have_css('img')
    end

    it 'should display the number of posts of user' do
      expect(page).to have_text('Number of posts: 4')
    end

    it 'should display the Bio of user' do
      expect(page).to have_text('Artist from Dreamland')
    end

    it "should display the user's recent posts" do
      expect(page).to have_text('Test 1')
      expect(page).to have_text('Test 2')
      expect(page).to have_text('Test 3')
    end

    it 'should have a See all posts button' do
      expect(page).to have_button('See all posts')
    end

    it 'should redirect to post show page when clicking a user post' do
      click_link('Test 1')
      expect(page).to have_current_path('/users/1/posts/1')
    end

    it 'should redirect to posts show page when clicking a user post' do
      click_button('See all posts')
      expect(page).to have_current_path('/users/1/posts')
    end
  end
end
