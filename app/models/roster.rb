class Roster < ActiveRecord::Base
  attr_accessible :jersey_number, :player_id, :player, :team, :team_id

  belongs_to :player
  belongs_to :team

  validates :player_id, presence: true
  validates :jersey_number, presence: true, :inclusion => 1..99
end
