require 'rails_helper'

describe 'add a comment to a blog' do

  before do
    Blog.create(name: 'Cranberry Panda Dance2',
                author: 'Jackie Chan', 
                content: 'Hello world')
  end

  it 'a user should be able to comment on a blog' do
    visit '/'
    click_link 'Cranberry Panda Dance2'
    click_link 'Comment'
    fill_in 'Content', with: 'Bloody awesome post'
    click_button 'Submit'
    expect(page).to have_content 'Bloody awesome post'
  end

end