class AddTradeResponsesToMessages < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :user1_accepted, :boolean
    add_column :messages, :user2_accepted, :boolean
  end
end
