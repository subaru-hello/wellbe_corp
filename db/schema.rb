# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_220_315_235_846) do
  create_table 'accounts', charset: 'utf8mb4', force: :cascade do |t|
    t.bigint 'profile_id'
    t.string 'name'
    t.string 'link'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['profile_id'], name: 'index_accounts_on_profile_id'
  end

  create_table 'club_teams', charset: 'utf8mb4', force: :cascade do |t|
    t.string 'teamname'
    t.string 'establishedplace_code'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'competitions', charset: 'utf8mb4', force: :cascade do |t|
    t.string 'name'
    t.integer 'entry_fee'
    t.string 'held_place'
    t.string 'border_time'
    t.date 'held_date'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'crues', charset: 'utf8mb4', force: :cascade do |t|
    t.string 'nickname'
    t.string 'email', null: false
    t.string 'password'
    t.string 'password_confirmation'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_crues_on_email', unique: true
  end

  create_table 'profiles', charset: 'utf8mb4', force: :cascade do |t|
    t.bigint 'crue_id'
    t.string 'ambition'
    t.string 'favorite_food'
    t.string 'birthplace_code'
    t.date 'birthday'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['crue_id'], name: 'index_profiles_on_crue_id'
  end

  create_table 'records', charset: 'utf8mb4', force: :cascade do |t|
    t.bigint 'crue_id'
    t.bigint 'competition_id'
    t.string 'group', null: false
    t.string 'race_result', null: false
    t.string 'rane'
    t.string 'wind', null: false
    t.string 'weather'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['competition_id'], name: 'index_records_on_competition_id'
    t.index ['crue_id'], name: 'index_records_on_crue_id'
  end

  create_table 'sponsors', charset: 'utf8mb4', force: :cascade do |t|
    t.string 'name'
    t.string 'product'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
