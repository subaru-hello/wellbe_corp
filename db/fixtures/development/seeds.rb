# frozen_string_literal: true

PREFECTURES_COUNT = 47
(1..50).each do |id|
  PREFECTURE_CODE = (id % PREFECTURES_COUNT) + 1
  Crue.seed_once(
    {
      id: id,
      nickname: Faker::Artist.name,
      email: "init_user#{id}@example.com"
    }
  )
  Record.seed_once(
    {
      id: id,
      group: Faker::Superhero.name,
      race_result: Faker::Number.decimal(l_digits: 2),
      rane: Faker::Number.between(from: 1, to: 8),
      wind: Faker::Number.within(range: 0.0..3.0),
      weather: Faker::Superhero.name
    }
  )
  Competition.seed_once(
    {
      id: id,
      name: Faker::Sports::Football.competition,
      entry_fee: Faker::Number.binary(digits: 3),
      held_place: Faker::WorldCup.stadium,
      held_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
      border_time: Faker::Number.decimal(l_digits: 2)
    }
  )
  Sponsor.seed_once(
    {
      id: id,
      name: Faker::Superhero.name,
      product: Faker::JapaneseMedia::Naruto.demon
    }
  )
  ClubTeam.seed_once(
    {
      id: id,
      teamname: Faker::Superhero.name,
      establishedplace_code: PREFECTURES_COUNT
    }
  )
  Profile.seed_once(
    {
      id: id,
      ambition: Faker::Quote.famous_last_words,
      favorite_food: Faker::Food.fruits,
      birthplace_code: PREFECTURES_COUNT,
      birthday: Faker::Date.between(from: 2.days.ago, to: Date.today)
    }
  )
  Account.seed_once({ id: id, name: Faker::App.name, link: Faker::App.name })
end
