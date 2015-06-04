require 'rails_helper'

describe 'adding a blog' do

  it 'a user should be able to add a blog' do

    visit '/'
    click_link 'Add a blog'
    fill_in 'Name', with: 'MnMs'
    fill_in 'Author', with: 'Yellow'
    fill_in 'Description', with: 'About life and stuff..'
    fill_in 'Content', with: 'Hello world...'
    click_button 'Submit'

    expect(page).to have_content 'MnMs'
  end

end
