require 'swagger_helper'

describe 'ROR Blog API' do
  path '/api/users' do
    get 'Get all users' do
      produces 'application/json'
      parameter name: 'Authorization', in: :headers, type: :string

      response '401', 'No Web Token' do
        run_test! do |response|
          data = JSON.parse(response.body)
          expect(data['errors']).to eq 'Nil JSON web token'
        end
      end
    end
  end
end