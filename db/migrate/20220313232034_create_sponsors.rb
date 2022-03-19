# frozen_string_literal: true

class CreateSponsors < ActiveRecord::Migration[6.1]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :product
      t.timestamps
    end
  end
end
