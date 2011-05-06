class Reply < ActiveRecord::Base
  belongs_to :message
  
  validates_length_of :body, :minimum => 1, :maximum => 50
end
