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

for i in 1..14
  Stage.create(number: i, name: "문제#{i}", questionlayout: "#{i}.html.erb", answerlayout: "#{i}.html.erb", answer: "정답#{i}", team: now)
end
for i in 1..14
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
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s7.png",
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
Stage.find(13).update(answer: "", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q13.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s13.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h13_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h13_help.png")
Stage.find(14).update(answer: "14440220", q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q14.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/script/h_s14.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/hint/h14_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/help/h14_help.png")

# 과거팀
Stage.find(15).update(answer: "헌법재판소",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q1.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s1.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g01_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g01_help.png")
Stage.find(16).update(answer: "손병희선생집터",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q2.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s2.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g02_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g02_help.png")
Stage.find(17).update(answer: "51",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q3.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s3.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g03_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g03_help.png")
Stage.find(18).update(answer: "LEG",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q4.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s4.png",
                     after_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q4_next.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g04_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g04_help.png")
Stage.find(19).update(answer: "1257",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q5.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s5.png",
                     after_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q5_next.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g05_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g05_help.png")
Stage.find(20).update(answer: "32",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q6.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s6.png",
                     after_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q6_next.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g06_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g06_help.png")
Stage.find(21).update(answer: "정지용",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q7.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s7.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g07_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g07_help.png")
Stage.find(22).update(answer: "9.2.17",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q8.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s8.png",
                     after_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q8_next.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g08_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g08_help.png")
Stage.find(23).update(answer: "고궁박물관",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q9.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s9.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g09_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g09_help.png")
Stage.find(24).update(answer: "14191620#11411320",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q10.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s10.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g10_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g10_help.png")
Stage.find(25).update(answer: "측우기",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q11.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s11.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g11_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g11_help.png")
Stage.find(26).update(answer: "756",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q12.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q12_next.png",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g12_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g12_help.png")
Stage.find(27).update(answer: "",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q13.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s13.png",
                     after_img: "",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g13_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g13_help.png")
Stage.find(28).update(answer: "14440220",
                     q_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/quiz/g_q14.png",
                     s_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/script/g_s14.png",
                     after_img: "",
                     hint_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/hint/g14_hint.png",
                     help_img: "https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/past/help/g14_help.png")
# Player.create(name: "test", password: "123456", password_confirmation: "123456", theme_id: 1, team_id: 1, hintcount: 10, starttime: DateTime.now, endtime: DateTime.now)
Player.create(name: "test", password: "123456", password_confirmation: "123456", theme_id: 1, team_id: 1, hintcount: 10, starttime: "2017-08-13 14:30:05", endtime: "2017-08-13 17:00:00")
