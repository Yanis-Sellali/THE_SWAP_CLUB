class AddBackgroundImageToTeams < ActiveRecord::Migration[7.1]
  def change
    add_column :teams, :background_image, :string
  end
end
