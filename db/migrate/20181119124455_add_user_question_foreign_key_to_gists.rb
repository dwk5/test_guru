class AddUserQuestionForeignKeyToGists < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :gists, :users
    add_foreign_key :gists, :questions
  end
end
