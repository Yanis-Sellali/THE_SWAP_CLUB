class AddJerseysToExchanges < ActiveRecord::Migration[7.1]
  def change
    add_column :exchanges, :sender_jersey_id, :integer
    add_column :exchanges, :receiver_jersey_id, :integer
  end
end
