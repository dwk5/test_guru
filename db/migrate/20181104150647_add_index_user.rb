class AddIndexUser < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :password, unique: true
  end
end
