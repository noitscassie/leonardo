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

  scenario 'Clicking the New Post button takes the user to the new post page' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit root_url
    click_link 'New Post'
    expect(page).to have_content 'Add new post'
  end
end
