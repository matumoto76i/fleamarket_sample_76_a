class Profile < ApplicationRecord
  belongs_to :user, optional: true
  
  validates :birth_date, presence: true
  validates :phone, format: {with: /\A[0-9-]{,14}\z/}
  validates :first_name, :last_name, presence: true, format: {with: /[^ -~｡-ﾟ]+/}
  validates :first_kana, :last_kana, presence: true, format: {with: /[\p{katakana}　ー－]+/}
end
