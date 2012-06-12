require 'spec_helper'

describe Team do
  let (:team) { Team.create(name: "Cardinals", year: "2012") }

  subject { team }

  it { should respond_to :name }
  it { should respond_to :year }
  it { should be_valid }

  describe "when name is missing" do
    before { team.name = "" }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { team.name = "a" * 31 }
    it { should_not be_valid }
  end

  describe "when year is missing" do
    before { team.year = "" }
    it { should_not be_valid }
  end

  describe "when year is too long" do
    before { team.year = "a" * 5 }
    it { should_not be_valid }
  end

end
