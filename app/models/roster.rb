class Roster < ActiveRecord::Base
  attr_accessible :jersey_number, :player_id, :player

  belongs_to :player

  validates :player_id, presence: true
  validates :jersey_number, presence: true, :inclusion => 1..99
end
