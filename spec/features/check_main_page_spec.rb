require 'rails_helper'

describe 'Main page' do
  it 'opens main page' do
    visit '/'
    expect(page).to have_content 'Create chat'
  end
end
