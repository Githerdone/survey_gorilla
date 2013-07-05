class Question < ActiveRecord::Base
  
  # validates_presence_of :question

  belongs_to :survey
  has_many :answers
end
