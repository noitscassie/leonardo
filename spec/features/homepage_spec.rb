require 'rails_helper'

feature 'Homepage' do
  scenario 'User sees "Leonardo" on the homepage' do
    visit root_url
    expect(page).to have_content 'leonardo'
  end

  scenario 'Homepage should have link taking user to page to add new photo' do
    visit root_url
    expect(page).to have_link 'New Post'
  end
end
