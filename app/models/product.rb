class Product < ApplicationRecord
  has_many :images, dependent: :destroy
  belongs_to :category
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :name, presence: true, length: {maximum: 40}
  validates :description,:category,:region,:state,:period,:cost, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :region
  belongs_to_active_hash :state
  belongs_to_active_hash :period
  belongs_to_active_hash :cost
  belongs_to_active_hash :size
end
