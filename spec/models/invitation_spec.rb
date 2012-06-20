require 'spec_helper'

describe Invitation do
  
  let(:invitation) { Invitation.create(recipient_email: 'rbastian@gmail.com', token: 'abcde') }
  
  subject { invitation }

  it { should respond_to :recipient_email }
  it { should respond_to :token }
  it { should be_valid }

  describe "when recipient_email is missing" do
    before { invitation.recipient_email = "" }
    it { should_not be_valid }
  end

  describe "when recipient_email is too long" do
    before { invitation.recipient_email = "a" * 256 }
    it { should_not be_valid }
  end
 
  describe "when recipient_email is invalid" do
    invalid_emails = %w[user@foo,com user_at_foo.org example.user@foo.]
    invalid_emails.each do | invalid_email | 
      before { invitation.recipient_email = invalid_email }
      it { should_not be_valid }
    end
  end

  describe "when recipient_email is valid" do
    valid_emails = %w[rbastian@gmail.com rbastian@mac.com rbastian@crap.org rbastian+test@test.edu]
    valid_emails.each do | valid_email |
      before { invitation.recipient_email = valid_email }
      it { should be_valid }
    end
  end

end
