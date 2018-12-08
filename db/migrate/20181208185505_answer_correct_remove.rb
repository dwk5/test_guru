class AnswerCorrectRemove < ActiveRecord::Migration[5.2]
  def up
    remove_column :answers, :correct
  end

  def down
    add_column :answers, :correct, :boolean, default: false
  end
end
