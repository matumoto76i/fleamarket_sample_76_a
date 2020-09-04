class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :user, optional: true
  
  validates :prefecture_id, :city, :address, presence: true
  validates :post_code, presence: true, format: {with: /\A[0-9-]{,8}\z/}
end
