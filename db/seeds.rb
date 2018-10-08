# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category = Category.create!([
  { title: 'Древний мир' },
  { title: 'Средневековье' },
  { title: 'Новое время' }
])

test = Test.create!([
  { title: 'Даты' , category_id: 1 },
  { title: 'События' , level: 2, category_id: 2 },
  { title: 'Личности' , category_id: 3 },
  { title: 'Места' , level: 3, category_id: 4 },
  { title: 'Понятия' , category_id: 5 }
])

question = Question.create!([
  { body: 'Год Битвы при Марафоне?', test_id: 1 },
  { body: 'Гражданская война в Англии в 15в.?', test_id: 2 },
  { body: 'Император России, отменивший крепостное право?', test_id: 3 },
  { body: 'Священный город в Древней Греции, оракул Апполона?', test_id: 4 },
  { body: 'Массовое религиозное и общественно-политическое движение в Европе в 16 веке?', test_id: 5 }
])

answer = Answer.create!([
  { body: '490 г. до н.э.', correct: true, question_id: 1 },
  { body: 'Война роз', correct: true, question_id: 2 },
  { body: 'Александр 2', correct: true, question_id: 3 },
  { body: 'Дельфы', correct: true, question_id: 4 },
  { body: 'Реформация', correct: true, question_id: 5 }
])

user = User.create!([
  { name: 'Иван', login: 'ivan', password: 'ivan123', email: 'ivan@email.com' },
  { name: 'Мария', login: 'maria', password: 'maria123', email: 'maria@email.com' },
  { name: 'Петр', login: 'petr', password: 'petr123', email: 'petr@email.com' }
])
