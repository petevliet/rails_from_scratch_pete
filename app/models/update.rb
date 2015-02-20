class Update < ActiveRecord::Base
  validates :status, :user, presence: true
end
