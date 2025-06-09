class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :country
      t.string :logo

      t.timestamps
    end
  end
end
