# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.destroy_all
Answer.destroy_all

@questions = []

50.times do |index|
  question = Question.create!(
    user_id: 1,
    content: Faker::Lorem.paragraph
    )
    @questions.push(question.id)
end

250.times do |index|
  Answer.create!(
    user_id: 1,
    content: Faker::StarWars.quote,
    question_id: Faker::Number.between(@questions[0],@questions[49])
  )
end
p "Created #{Question.count} questions"
p "Created #{Answer.count} answers"
