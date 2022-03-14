class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :crue
      t.string :ambition
      t.string :favorite_food
      t.timestamps
    end
  end
end
