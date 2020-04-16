class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :rememberable, :validatable

  validates :name, presence: true
  validates :username, uniqueness: true

  has_many :tweets
  has_many :items

  acts_as_followable
  acts_as_follower

  acts_as_voter
end
