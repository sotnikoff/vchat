require 'rails_helper'

RSpec.describe VoiceController, type: :controller do
  before(:each) do
    @message = create :message
  end

  describe 'GET #show' do
    it 'returns http success' do
      get :show, params: { id: @message.id }
      expect(response).to be_successful
    end
  end
end
