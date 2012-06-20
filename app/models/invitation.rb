class Invitation < ActiveRecord::Base
  attr_accessible :recipient_email, :token

  before_create :generate_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :recipient_email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }

  def generate_token
    self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
  end

end
