require 'rails_helper'

describe Blog do

  it 'must have a name' do
    blog = Blog.new
    expect(blog.valid?).to eq false
  end

  it 'must have an author' do
    blog = Blog.new(name: 'Cranberry pandas')
    expect(blog.valid?).to eq false
  end

  it 'must have content' do
    blog = Blog.new(name: 'Cranberry pandas', author: 'Mickey Mouse')
    expect(blog.valid?).to eq false
  end

end