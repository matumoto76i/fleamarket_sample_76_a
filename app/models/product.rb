class Product < ApplicationRecord
  has_many :images
  belongs_to :category
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :region,:state,:period,:cost, presence: true
end
