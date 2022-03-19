class CreateClubTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :club_teams do |t|
      t.string :teamname
      t.string :establishedplace_code

      t.timestamps
    end
  end
end
