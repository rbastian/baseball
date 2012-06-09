class Player < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  validates :first_name, presence: true, length: { maximum: 30 }
  validates :last_name, presence: true, length: { maximum: 30 }
end
