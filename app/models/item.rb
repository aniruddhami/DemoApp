class Item < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :url, presence: true
  validates :text, presence: true
  
  acts_as_votable
end
