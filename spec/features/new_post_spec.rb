require 'rails_helper'

feature 'New post page' do
  scenario 'Page has title informing the user that they can create a new post' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit '/posts/new'
    expect(page).to have_content 'Add new post'
  end
  scenario 'Page has form allowing the user to upload a new post' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit '/posts/new'
    expect(page).to have_field 'image'
    expect(page).to have_field 'description'
    expect(page).to have_button 'Save'
  end
end
