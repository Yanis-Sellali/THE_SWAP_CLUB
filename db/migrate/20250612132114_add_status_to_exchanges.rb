class AddStatusToExchanges < ActiveRecord::Migration[7.1]
  def change
    add_column :exchanges, :status, :string
  end
end
