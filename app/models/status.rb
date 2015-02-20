class Status < ActiveRecord::Base
  validates :status, :user, presence: true
  
end
