require 'rails_helper'

feature 'Layout' do
  scenario 'Page should have link to sign in when user is not signed in' do
    visit root_url
    expect(page).to have_link 'Sign In'
  end

  scenario 'Page should have link to sign up when user is not signed in' do
    visit root_url
    expect(page).to have_link 'Sign Up'
  end

  scenario 'Page should have link to sign out when user is signed in' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit root_url
    expect(page).not_to have_link 'Sign In'
    expect(page).not_to have_link 'Sign Up'
    expect(page).to have_link 'Sign Out'
  end
end
