class RemoveTestQuestionAnswerUnnecessaryColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column(:tests, :category_id, :integer)
    remove_column(:questions, :test_id, :integer)
    remove_column(:answers, :question_id, :integer)
  end
end
