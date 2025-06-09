class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :localisation, :string
    add_column :users, :rating, :integer
    add_column :users, :nom, :string
  end
end
