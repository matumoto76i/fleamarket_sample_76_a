class AddNicknameToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :nickname, :string,      null: false
  end
end
