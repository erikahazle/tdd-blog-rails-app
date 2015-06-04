require 'rails_helper'

describe Comment do

  it 'must have content' do
    comment = Comment.new
    expect(comment.valid?).to eq false
  end

end
