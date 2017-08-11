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

for i in 1..13
  Stage.create(number: i, name: "문제#{i}", questionlayout: "#{i}.html.erb", answerlayout: "#{i}.html.erb", answer: "정답#{i}", team: now)
  Stage.create(number: i, name: "문제#{i}", questionlayout: "#{i}.html.erb", answerlayout: "#{i}.html.erb", answer: "정답#{i}", team: past)
end
Stage.find(1).update(answer: "1181",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q1.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s1.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h01_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h01_help.png")
Stage.find(2).update(answer: "2339", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q2.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s2.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h02_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h02_help.png")
Stage.find(3).update(answer: "8534", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q3.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s3.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h03_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h03_help.png")
Stage.find(4).update(answer: "ㄱ,ㄷ,ㅅ,ㅈ", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q4.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s4.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h04_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h04_help.png")
Stage.find(5).update(answer: "동십자각", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q5.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s5.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h05_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h05_help.png")
Stage.find(6).update(answer: "162", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q6.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s6.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h06_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h06_help.png")
Stage.find(7).update(answer: "18", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q7.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s1.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h07_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h07_help.png")
Stage.find(8).update(answer: "메밀꽃필무렵,진달래꽃,운수좋은날,사슴", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q8.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s8.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h08_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h08_help.png")
Stage.find(9).update(answer: "6273", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q9.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s9.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h09_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h09_help.png")
Stage.find(10).update(answer: "국립민속박물관", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q10.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s10.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h10_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h10_help.png")
Stage.find(11).update(answer: "0818", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q11.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s11.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h11_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h11_help.png")
Stage.find(12).update(answer: "근정전", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q12.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s12.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h12_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h12_help.png")
