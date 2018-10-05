class AddTestQuestionAnswerUserNullConstraint < ActiveRecord::Migration[5.2]
  def up
    change_column_null(:tests, :title, false)
    change_column_null(:questions, :body, false)
    change_column_null(:users, :name, false)
    change_column_null(:users, :login, false)
    change_column_null(:users, :password, false)
    change_column_null(:users, :email, false)
  end

  def down
    change_column_null(:tests, :title, true)
    change_column_null(:questions, :body, true)
    change_column_null(:users, :name, true)
    change_column_null(:users, :login, true)
    change_column_null(:users, :password, true)
    change_column_null(:users, :email, true)
  end
end
