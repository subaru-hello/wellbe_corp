# frozen_string_literal: true

class CreateCrues < ActiveRecord::Migration[6.1]
  def change
    create_table :crues do |t|
      t.string :nickname
      t.string :email, null: false, index: { unique: true }
      t.string :password
      t.string :password_confirmation
      t.timestamps
    end
  end
end
