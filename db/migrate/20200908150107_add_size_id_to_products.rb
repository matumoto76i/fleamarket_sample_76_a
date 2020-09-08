class AddSizeIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :size_id, :integer, null: false, foreign_key: true
  end
end
