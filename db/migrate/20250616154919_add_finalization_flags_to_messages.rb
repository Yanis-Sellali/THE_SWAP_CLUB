class AddFinalizationFlagsToMessages < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :user1_finalized, :boolean
    add_column :messages, :user2_finalized, :boolean
  end
end
