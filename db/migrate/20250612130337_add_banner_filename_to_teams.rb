class AddBannerFilenameToTeams < ActiveRecord::Migration[7.1]
  def change
    add_column :teams, :banner_filename, :string
  end
end
