class Team < ActiveRecord::Base
  attr_accessible :name, :year

  validates :name, presence: true, length: { maximum: 30 }
  validates :year, presence: true, length: { maximum: 4 }
end
