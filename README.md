# wellbe_corp
WellBe.incのコーポレートサイト
[参考サイト](http://aogaku-tf.com/)
### 使用技術
Rails 6
Vue.js
heroku

### 欲しい機能
  参加予定の記録会情報
  Youtubeページ
  持ちタイムページ
  部員紹介（プロフィールページ）
  応援するボタン

### 使用テーブル
- Crue（部員）テーブル
  nickname
  email
  password
  password_confirmation
  birth_day

- Competitionテーブル
  name
  held_area
  entry_fee
  entry_qualification
- Recordテーブル
  fk race__name
  race_result
  wind
  group
  lane
  weather
- Authenticationテーブル
- Profileテーブル
  favorite_food
  amvision

- Accountsテーブル
  name
  link
- Sponsorテーブル
  name
  product
  
ER図
https://drive.google.com/file/d/1KYM1e9slZtQduJiG1sV7kB5tQjIygJUj/view?usp=sharing
