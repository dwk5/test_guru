class ChangeUser < ActiveRecord::Migration[5.2]

  def up
    change_column_null(:users, :name, true)
    change_column_null(:users, :login, true)
    change_column_null(:users, :password, true)
  end

  def down
    change_column_null(:users, :name, false)
    change_column_null(:users, :login, false)
    change_column_null(:users, :password, false)
  end

end
