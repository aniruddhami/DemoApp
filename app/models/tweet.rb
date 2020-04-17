class Tweet < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  
  has_attached_file :image, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
