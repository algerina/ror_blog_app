require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it ' renders http' do
      get '/users'
      expect(response).to have_http_status(200)
      expect(response.body).to include('Users')
    end

    it 'renders the user page' do
      get '/users/76'
      expect(response).to have_http_status(200)
    end
  end

  describe 'get users#show', type: :request do
    before(:each) { get '/users/:10' }

    it 'renders show template' do
      expect(response).to render_template('show')
    end
  end
end
