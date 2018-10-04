class RemoveAnswerTestQuestionExesValues < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:tests, :categories, index: true)
    remove_reference(:questions, :tests, index: true)
    remove_reference(:answers, :questions, index: true)
  end
end
