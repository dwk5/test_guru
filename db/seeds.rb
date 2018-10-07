# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categoty = Category.create!([
  { title: 'Древний мир' },
  { title: 'Средневековье' },
  { title: 'Новое время' }
])

test1 = Test.create!([
  { title: 'Даты' , category_id: categories[0] },
  { title: 'События' , level: 2, category_id: categories[1] },
  { title: 'Личности' , category_id: categories[2] },
  { title: 'Места' , level: 3, category_id: categories[0] },
  { title: 'Понятия' , category_id: categories[1] }
])

question = Question.create!([
  { body: 'Год Битвы при Марафоне?', test_id: tests[0] },
  { body: 'Гражданская война в Англии в 15в.?', test_id: tests[1] },
  { body: 'Император России, отменивший крепостное право?', test_id: tests[2] },
  { body: 'Священный город в Древней Греции, оракул Апполона?', test_id: tests[3] },
  { body: 'Массовое религиозное и общественно-политическое\
     движение в Европе в 16 веке?', test_id: tests[4] },
])

answer = Answer.create!([
  { body: '490 г. до н.э.', correct: true, question_id: questions[0] },
  { body: 'Война роз', correct: true, question_id: questions[1] },
  { body: 'Александр 2', correct: true, question_id: questions[2] },
  { body: 'Дельфы', correct: true, question_id: questions[3] },
  { body: 'Реформация', correct: true, question_id: questions[4] }
])

user = User.create!([
  { name: 'Иван', login: 'ivan', password: 'ivan123', email: 'ivan@email.com' },
  { name: 'Мария', login: 'maria', password: 'maria123', email: 'maria@email.com' },
  { name: 'Петр', login: 'petr', password: 'petr123', email: 'petr@email.com' }
])
