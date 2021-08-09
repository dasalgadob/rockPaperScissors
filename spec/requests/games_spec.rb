require 'rails_helper'

RSpec.describe '/games', type: :request do
  let(:valid_attributes) do
    %w(rock paper scissors).sample
  end

  let(:valid_headers) do
    {}
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'renders a JSON response with the game result' do
        post '/games/create',
             params: { user_move: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to include('application/json')
      end
    end
  end
end
