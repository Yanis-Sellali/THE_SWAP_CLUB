class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :exchange, null: false, foreign_key: true
      t.references :reviewer, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
