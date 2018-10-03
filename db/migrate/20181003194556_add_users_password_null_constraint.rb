class AddUsersPasswordNullConstraint < ActiveRecord::Migration[5.2]
  #def change
  #end

  def up
    change_column_null(:users, :password, false)
  end

  def down
    change_column_null(:users, :password, true)
  end
end
