class Blog < ActiveRecord::Base
  validates :name, presence: true
  validates :author, presence: true
  validates :content, presence: true
  has_many :comments
end
