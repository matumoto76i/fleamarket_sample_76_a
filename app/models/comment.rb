class Comment < ApplicationRecord
  belongs_to :products
  belongs_to :user, optional: true
end
