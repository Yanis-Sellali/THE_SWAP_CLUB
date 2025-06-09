class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :nom
      t.string :email
      t.string :localisation
      t.integer :rating

      t.timestamps
    end
  end
end
