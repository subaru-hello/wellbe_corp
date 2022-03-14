# frozen_string_literal: true

class CreateCompetitions < ActiveRecord::Migration[6.1]
  def change
    create_table :competitions do |t|
      t.string :name
      t.integer :entry_fee
      t.string :held_place
      t.string :border_time
      t.timestamps
    end
  end
end
