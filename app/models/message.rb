class Message < ActiveRecord::Base
  has_many :replies
  
  validates_presence_of :body
  validates_length_of :body, :maximum=>140 
  
end
