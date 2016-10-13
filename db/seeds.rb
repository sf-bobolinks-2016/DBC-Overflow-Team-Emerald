User.all.destroy_all if User.all
Question.all.destroy_all if Question.all
Answer.all.destroy_all if Answer.all

users = []
questions = []

10.times do |i|
  users << User.create(email: Faker::Internet.email,
                       password: "password")
end

users_id_array = users.reduce([]) { |ids, user| ids << user.id }

100.times do |i|
  questions << Question.create(title: Faker::Hipster.sentence,
                               question: Faker::Hipster.paragraph(10, false),
                               user_id: users_id_array.sample)
end

questions_id_array = questions.reduce([]) { |ids, question| ids << question.id }

200.times do |i|
  Answer.create(answer: Faker::Hipster.paragraph(10, false),
                question_id: questions_id_array.sample,
                user_id: users_id_array.sample)
end
