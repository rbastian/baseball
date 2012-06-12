require 'spec_helper'

describe Roster do
  let(:team) { Team.create(name: "Cardinals", year: "2012") }
  let(:player) { Player.create(first_name: "Skip", last_name: "Bastian") }
  let(:roster) { Roster.create(team: team, player: player, jersey_number: 1) }
  
  subject { roster }

  it { should respond_to :jersey_number } 
  it { should respond_to :player }
  it { should respond_to :team }
  it { should be_valid }

  describe "when player_id is missing" do
    before { roster.player_id = "" }
    it { should_not be_valid }
  end

  describe "when player is missing" do
   before { roster.player = nil }
   it { should_not be_valid }
  end
  
  describe "when jersey number is missing" do
    before { roster.jersey_number = "" }
    it { should_not be_valid }
  end

  describe "when jersey number is greater than 99" do
    before { roster.jersey_number = 100 }
    it { should_not be_valid }
  end
 
  describe "when jersey number is less than 1" do
    before { roster.jersey_number = 0 }
    it { should_not be_valid }
  end
end
