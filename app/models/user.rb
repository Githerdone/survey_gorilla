class User < ActiveRecord::Base
  has_secure_password

  #validations

  has_many :surveys
  has_many :responses
end
