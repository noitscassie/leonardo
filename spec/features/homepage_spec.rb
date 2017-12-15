require 'rails_helper'

feature 'Homepage is set up' do
  scenario 'User sees "Leonardo" on the homepage' do
    visit root_url
    expect(page).to have_content 'leonardo'
  end
end
