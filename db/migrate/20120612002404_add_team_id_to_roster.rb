class AddTeamIdToRoster < ActiveRecord::Migration
  def change
    add_column :rosters, :team_id, :integer, :null => false
  end
end
