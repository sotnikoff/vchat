require 'rails_helper'

describe 'Main page' do
  it 'opens main page' do
    visit '/'
    expect(page).to have_content I18n.t('chats.index.create_chat')
  end
end
