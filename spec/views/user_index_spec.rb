require 'rails_helper'

RSpec.describe 'User index page', type: :system do
  before do
    User.create(id: 1, name: 'name', email: 'name@name.com',
                photo: 'https://randomuser.me/api/portraits/women/50.jpg',
                password: 'password', posts_counter: 2)

    User.create(id: 2, name: 'amel', email: 'amel@amel.com',
                photo: 'https://randomuser.me/api/portraits/women/50.jpg',
                password: '123456', posts_counter: 6)
  end

  describe 'Visiting the users index page' do
    before :each do
      visit '/users'
    end

    it 'should display the username of all users' do
      expect(page).to have_text('name')
      expect(page).to have_text('amel')
    end

    it 'should display the profile picture of all users' do
      expect(page).to have_css('img')
    end

    it 'should display the number of posts of all users' do
      expect(page).to have_text('Number of posts: 2')
      expect(page).to have_text('Number of posts: 6')
    end

    it 'should redirect to users page when clicking a user' do
      click_link('name')
      expect(page).to have_current_path('/users/1')
    end
  end
end
