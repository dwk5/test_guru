class AddUsersEmailNullConstraint < ActiveRecord::Migration[5.2]
  #def change
  #end

  def up
    change_column_null(:users, :email, false)
  end

  def down
    change_column_null(:users, :email, true)
  end
end
