class AddJerseyOffersToMessages < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :offer_jersey_user1_id, :integer
    add_column :messages, :offer_jersey_user2_id, :integer
  end
end
