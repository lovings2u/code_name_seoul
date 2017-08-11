# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gh = Theme.create(name: "광화문 테마", imageurl: "https://", description: "광화문테마입니다.")

now = Team.create(name: "현재팀", imageurl: 'theme1.png' ,theme: gh, )
past = Team.create(name: "과거팀", imageurl: 'theme2.png' ,theme: gh, anotherteam: now.id)
now.update(anotherteam: past.id)

for i in 1..11
  Stage.create(number: i, name: "문제#{i}", questionlayout: "#{i}.html.erb", answerlayout: "#{i}.html.erb", answer: "정답#{i}", team: now)
  Stage.create(number: i, name: "문제#{i}", questionlayout: "#{i}.html.erb", answerlayout: "#{i}.html.erb", answer: "정답#{i}", team: past)
end
Stage.find(1).update(answer: "1181", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q1.png")
Stage.find(2).update(answer: "2339", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q2.png")
Stage.find(3).update(answer: "8534", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q3.png")
Stage.find(4).update(answer: "동십자각", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q4.png")
Stage.find(5).update(answer: "162")
Stage.find(6).update(answer: "18")
Stage.find(7).update(answer: "메밀꽃필무렵,진달래꽃,운수좋은날,사슴")
Stage.find(8).update(answer: "6273")
Stage.find(9).update(answer: "국립민속박물관")
Stage.find(10).update(answer: "0818")
Stage.find(11).update(answer: "근정전")
