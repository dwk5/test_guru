module QuestionsHelper
  def question_header(question)
    if question.persisted?
      "Редактирование вопроса: #{question.body}"
    else
      "Создание создание вопроса: #{question.test.title}"
    end
  end
end
