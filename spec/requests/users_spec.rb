require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    it "get root page, renders 'index' template" do
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
    it "renders 'show' in user controller" do
      expect(response).to render_template('show')
    end
  end
end
