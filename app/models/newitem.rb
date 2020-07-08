class Newitem < ApplicationRecord
	validates :title, presence: true
  validates :url, presence: true
  validates :text, presence: true
end
