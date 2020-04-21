class Picture < ApplicationRecord
  belongs_to :gallery

  has_attached_file :url
	#do_not_validate_attachment_file_type :url
  validates_attachment_content_type :url, content_type: /\Aimage\/.*\z/
end
