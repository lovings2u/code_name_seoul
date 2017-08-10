# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gh = Theme.create(name: "광화문 테마", imageurl: "https://", description: "광화문테마입니다.")

now = Team.create(name: "현재팀", imageurl: 'theme1.png' ,theme: gh)
past = Team.create(name: "과거팀", imageurl: 'theme2.png' ,theme: gh)

for i in 1..10
    Stage.create(number: i, name: "문제#{i}", questionlayout: "#{i}.html.erb", answerlayout: "#{i}.html.erb", answer: "정답#{i}", team: past)
    Stage.create(number: i, name: "문제#{i}", questionlayout: "#{i}.html.erb", answerlayout: "#{i}.html.erb", answer: "정답#{i}", team: now)
end