class AddHasTeamToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :has_team, :boolean
  end
end
