class AddSenderAndReceiverToExchanges < ActiveRecord::Migration[7.1]
  def change
    add_column :exchanges, :sender_id, :integer
    add_column :exchanges, :receiver_id, :integer
  end
end
