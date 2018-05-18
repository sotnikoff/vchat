require 'rails_helper'

RSpec.describe Chat, type: :model do
  before(:each) do
    @chat = build :chat
  end

  it 'succeed with title' do
    expect(@chat).to be_valid
  end

  it 'fails without title' do
    @chat.title = nil
    expect(@chat).not_to be_valid
  end

  it 'fails with short title' do
    @chat.title = '!'
    expect(@chat).not_to be_valid
  end

  it 'fails with long title' do
    @chat.title = '!' * 50
    expect(@chat).not_to be_valid
  end
end
