class Gallery < ApplicationRecord
	validates :name, presence: true
	validates :discription, presence: true
	
	has_many :pictures, :dependent => :destroy
end
