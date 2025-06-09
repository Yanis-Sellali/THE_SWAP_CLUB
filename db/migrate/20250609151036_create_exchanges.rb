class CreateExchanges < ActiveRecord::Migration[7.1]
  def change
    create_table :exchanges do |t|
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.references :jersey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
