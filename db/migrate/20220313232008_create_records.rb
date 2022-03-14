class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.references :crue
      t.references :competition
      t.string :group, null: false
      t.string :race_result, null: false
      t.string :rane 
      t.string :wind, null: false
      t.string :weather
      t.timestamps
    end
  end
end
