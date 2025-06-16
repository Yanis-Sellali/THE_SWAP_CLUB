class ChangeDefaultReadInMessages < ActiveRecord::Migration[7.1]
  def change
        change_column_default :messages, :read, from: nil, to: false
  end
end
