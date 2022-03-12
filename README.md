# wellbe_corp
WellBe.incのコーポレートサイト
[参考サイト](http://aogaku-tf.com/)
### 使用技術
Rails 6.0
Vue.js 3.2
heroku
### 欲しい機能
- 参加予定の記録会情報
- Youtubeページ	
- 持ちタイムページ
- 部員紹介（プロフィールページ）
- 応援するボタン
### 使用テーブル
- Crue（部員）テーブル
  nickname<br>
  email<br>
  password<br>
  password_confirmation<br>	
  birth_day<br>
- Competitionテーブル
  name<br>
  held_area<br>
  entry_fee	<br>
  entry_qualification<br>
- Recordテーブル
  fk race__name	<br>
  race_result<br>
  wind<br>
  group	<br>
  lane<br>
  weather<br>
- Authenticationテーブル
- Profileテーブル
 favorite_food<br>
  ambision<br>
- Accountsテーブル
  name
  link
- Sponsorテーブル
  name
  product	 

### ER図
https://drive.google.com/file/d/1KYM1e9slZtQduJiG1sV7kB5tQjIygJUj/view?usp=sharing