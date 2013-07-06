class User < ActiveRecord::Base
  has_secure_password

  validates :email, :presence => true, :email => true, :uniqueness => true
  validates :name, :password, :presence => true

  has_many :surveys
  has_many :responses
end
