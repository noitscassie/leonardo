require 'rails_helper'

feature 'New post page' do
  scenario 'Page has title informing the user that they can create a new post' do
    visit '/posts/new'
    expect(page).to have_content 'Add new post'
  end
end
