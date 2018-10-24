module QuestionsHelper
  def question_header(question)
    if question.persisted?
      "Редактировать вопрос: '#{question.body}'"
    else
      "Создание нового вопроса для теста: '#{question.test.title}'"
    end
  end
end
