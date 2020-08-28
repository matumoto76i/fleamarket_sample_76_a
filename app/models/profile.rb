class Profile < ApplicationRecord
  belongs_to :user, optional: true
  validates :first_name, :last_name, presence: true
end
