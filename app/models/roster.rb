class Roster < ActiveRecord::Base
  attr_accessible :jersey_number, :player_id, :player, :team, :team_id, :image_url

  belongs_to :player
  belongs_to :team

  mount_uploader :image_url, ImageUploader

  validates :player_id, presence: true
  validates :jersey_number, presence: true, :inclusion => 1..99
end
