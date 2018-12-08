class AnswerCorrectAdd < ActiveRecord::Migration[5.2]
  def up
    add_column :answers, :correct, :boolean, default: false
  end

  def down
    remove_column :answers, :correct, :boolean, default: false
  end
end
