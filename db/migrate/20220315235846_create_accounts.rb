# frozen_string_literal: true

class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.references :profile
      t.string :name
      t.string :link
      t.timestamps
    end
  end
end
