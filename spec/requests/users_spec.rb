require 'rails_helper'

RSpec.describe "Users", type: :request do
  let!(:users) { FactoryBot.create_list(:user, 10) }
  let(:todo_id) { users.first.id }

  describe "GET /index" do
    before { get '/users' }

    it 'returns users' do
      expect(json_response).not_to be_empty
      expect(json_response.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
