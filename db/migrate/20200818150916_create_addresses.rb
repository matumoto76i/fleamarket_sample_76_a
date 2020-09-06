class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :prefecture_id,   null: false
      t.string :city,             null: false
      t.string :post_code,       null: false
      t.string :address,          null: false
      t.string :apartment
      t.references :user
      t.timestamps
    end
  end
end
