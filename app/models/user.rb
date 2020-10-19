class User < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :scubas
  has_many :videos
  has_many :centers
end