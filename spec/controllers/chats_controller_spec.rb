require 'rails_helper'

RSpec.describe ChatsController, type: :controller do
  let(:chat) { create :chat }

  describe 'GET #show' do
    it 'returns http success' do
      get :show, params: { id: chat }
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    it 'returns http found' do
      post :create, params: {
        chat: {
          title: 'Test Chat Title'
        }
      }
      expect(response).to have_http_status(:found)
    end
  end
end
