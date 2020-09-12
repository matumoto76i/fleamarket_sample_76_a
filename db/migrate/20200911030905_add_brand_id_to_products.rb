class AddBrandIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :brand_id, :integer, foreign_key: true
  end
end
