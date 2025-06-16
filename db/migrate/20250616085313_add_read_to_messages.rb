class AddReadToMessages < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :read, :boolean
  end
end
