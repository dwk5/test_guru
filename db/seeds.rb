# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!([
  { title: 'Древний мир' },
  { title: 'Средневековье' },
  { title: 'Новое время' }
])

tests = Test.create!([
  { title: 'Даты' , category: categories[0] },
  { title: 'События' , level: 2, category: categories[1] },
  { title: 'Личности' , category: categories[2] },
  { title: 'Места' , level: 3, category: categories[0] },
  { title: 'Понятия' , category: categories[1] }
])

questions = Question.create!([
  { body: 'Год Битвы при Марафоне?', test: tests[0] },
  { body: 'Гражданская война в Англии в 15в.?', test: tests[1] },
  { body: 'Император России, отменивший крепостное право?', test: tests[2] },
  { body: 'Священный город в Древней Греции, оракул Апполона?', test: tests[3] },
  { body: 'Массовое религиозное и общественно-политическое движение в Европе в 16 веке?', test: tests[4] }
])

answers = Answer.create!([
  { body: '490 г. до н.э.', correct: true, question: questions[0] },
  { body: 'Война роз', correct: true, question: questions[1] },
  { body: 'Александр 2', correct: true, question: questions[2] },
  { body: 'Дельфы', correct: true, question: questions[3] },
  { body: 'Реформация', correct: true, question: questions[4] }
])
