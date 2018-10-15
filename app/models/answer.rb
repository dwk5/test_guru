class Answer < ApplicationRecord
  belongs_to :question
  scope :correct_answers, -> { where(correct: true)}
  validates :body, presence: true
  validate :amount_answers, on: :create

  def amount_answers
    if question.answers.size >= 4
      errors.add(:answers, 'У вопроса не может быть более 4 ответов')
    end
  end

end
