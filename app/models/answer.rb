class Answer < ActiveRecord::Base
  
  validates_presence_of :answer

  belongs_to :question
  has_many :responses
end
