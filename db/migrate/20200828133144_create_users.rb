class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, nill: false
      t.string :email, unipue: true
      t.string :password, null: false

      t.timestamps
    end
  end
end
