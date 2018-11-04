class TestPassage < ApplicationRecord
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :before_validation_next_question, on: %i[create update]

  SCORE_POINTS = 85

  def completed?
    current_question.nil?
  end

  def accept!(answer_ids)
    if correct_answer?(answer_ids)
      self.correct_questions += 1
    end
    save!
  end

  def score_percentage
    (correct_questions.to_f / count_test_questions * 100).round
  end

  def test_passed?
    score_percentage >= SCORE_POINTS
  end

  def number_current_question
    count_test_questions - last_questions.count
  end

  def count_test_questions
    test.questions.count
  end

  private

  def before_validation_next_question
    self.current_question = next_question
  end

  def correct_answer?(answer_ids)
    correct_answers.ids.sort == answer_ids.map(&:to_i).sort
  end

  def correct_answers
    current_question.answers.correct
  end

  def last_questions
    test.questions.order(:id).where('id > ?', current_question.id)
  end

  def next_question
    if current_question.nil? && test.present?
      test.questions.first
    else
      last_questions.first
    end
  end

end
