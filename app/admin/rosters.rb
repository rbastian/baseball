ActiveAdmin.register Roster do
  filter :player

  index do
    column "Id", :sortable => :id  do | roster |
      link_to roster.id, admin_roster_path(roster)
    end
    column "Jersey", :sortable => :jersey_number do | roster |
      link_to roster.jersey_number, admin_player_path(roster.player)
    end
    column "Player" do | roster | 
      link_to roster.player.first_name, admin_player_path(roster.player)
    end
    default_actions
  end

  form do | f |
    f.inputs do 
      f.input :player
      f.input :jersey_number
    end
    f.buttons
  end

end
