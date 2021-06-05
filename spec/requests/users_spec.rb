require 'rails_helper'

RSpec.describe "Users", type: :request do
  let!(:users) { FactoryBot.create_list(:user, 10) }
  let(:user_id) { users.first.id }

  describe "GET # /index" do
    before { get '/users' }

    it 'returns users' do
      expect(json_response).not_to be_empty
      expect(json_response.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET # /show" do
    it 'returns users' do
      get "/users/#{user_id}"

      expect(json_response).not_to be_empty
      expect(json_response[:id]).to eq user_id
    end

    it 'returns status code 200' do
      get "/users/#{user_id}"

      expect(response).to have_http_status(200)
    end

    it 'returns status code 404' do
      get '/users/11'

      expect(response).to have_http_status(404)
    end
  end

  describe 'POST /users' do
    # valid payload
    let(:valid_attributes) { {user: { full_name: Faker::Name.name,
                                      sex: 'not_known',
                                      date_of_birth: Faker::Date.birthday(min_age: 20, max_age: 65).to_s,
                                      image_url: Faker::Internet.url}} }

    context 'when the request is valid' do
      before { post '/users', params: valid_attributes }

      it 'creates a user' do
        expect(json_response[:full_name]).to eq valid_attributes[:user][:full_name]
        expect(json_response[:sex]).to eq valid_attributes[:user][:sex]
        expect(json_response[:date_of_birth]).to eq valid_attributes[:user][:date_of_birth]
        expect(json_response[:image_url]).to eq valid_attributes[:user][:image_url]
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    # context 'when the request is invalid' do
    #   before { post '/users', params: { full_name: Faker::Name.name } }

    #   it 'returns status code 422' do
    #     expect(response).to have_http_status(422)
    #   end

    #   it 'returns a validation failure message' do
    #     expect(response.body)
    #       .to match(/Validation failed: Created by can't be blank/)
    #   end
    # end
  end
end
