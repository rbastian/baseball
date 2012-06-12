class Team < ActiveRecord::Base
  attr_accessible :name, :year

  has_many :roster_spots, :class_name => "Roster"

  validates :name, presence: true, length: { maximum: 30 }
  validates :year, presence: true, length: { maximum: 4 }
end
