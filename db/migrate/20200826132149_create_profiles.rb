class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name,       null: false
      t.string :last_name,        null: false
      t.string :first_kana,       null: false
      t.string :last_kana,        null: false
      t.date :birth_date,         null: false
      t.string :phone
      t.timestamps
      t.references :user
    end
  end
end
