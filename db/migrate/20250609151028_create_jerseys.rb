class CreateJerseys < ActiveRecord::Migration[7.1]
  def change
    create_table :jerseys do |t|
      t.string :name
      t.string :flocking
      t.integer :year
      t.string :description
      t.string :image
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.string :size
      t.string :condition

      t.timestamps
    end
  end
end
