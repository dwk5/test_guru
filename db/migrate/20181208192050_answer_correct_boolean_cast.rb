class AnswerCorrectBooleanCast < ActiveRecord::Migration[5.2]
  def change
    change_column :answers, :correct, 'boolean USING CAST(correct AS boolean)'
  end
end
