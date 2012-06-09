require 'spec_helper'

describe Player do

  let(:player) { Player.create(first_name: "Skip", last_name: "Bastian") }

  subject { player }

  it { should respond_to :first_name }
  it { should respond_to :last_name }
  it { should be_valid }

  describe "when first_name is missing" do
    before { player.first_name = "" }
    it { should_not be_valid }
  end

  describe "when first_name is too long" do
    before { player.first_name = "a" * 31 }
    it { should_not be_valid }
  end

  describe "when last_name is missing" do
    before { player.last_name = "" }
    it { should_not be_valid }
  end

  describe "when last_name is too long" do
    before { player.last_name = "a" * 31 }
    it { should_not be_valid }
  end

end
