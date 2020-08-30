class Profile < ApplicationRecord
  belongs_to :user, optional: true
  validates :first_name, :last_name, :first_kana, :last_kana, :birth_date, presence: true
end
