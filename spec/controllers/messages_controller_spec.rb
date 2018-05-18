require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  let(:chat) { create :chat }

  describe 'POST #create' do
    it 'returns http found' do
      post :create, params: {
        message: {
          bot: 'maxim',
          text: 'hello world',
          chat_id: chat.id
        }
      }
      expect(response).to have_http_status(:found)
    end

    it 'returns http error with bad data' do
      post :create, params: {
        message: {
          bot: nil,
          text: 'hello world' * 1000
        }
      }
      expect(response).to have_http_status(:bad_request)
    end
  end
end
