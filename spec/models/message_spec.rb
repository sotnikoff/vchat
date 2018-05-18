require 'rails_helper'

RSpec.describe Message, type: :model do
  before(:each) do
    @message = build :message
  end

  it 'is valid' do
    expect(@message).to be_valid
  end

  it 'is not valid with very long text' do
    @message.text = 'HelloWorld' * 1000
    expect(@message).not_to be_valid
  end

  it 'is not valid with empty text' do
    @message.text = nil
    expect(@message).not_to be_valid
  end

  it 'is not valid without chat id' do
    @message.chat = nil
    expect(@message).not_to be_valid
  end
end
