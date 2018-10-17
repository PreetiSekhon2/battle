require "player"

describe Player do

  subject(:john) {described_class.new("John")}
  subject(:jane) {described_class.new("Jane")}

  it "returns the name of the player" do
    expect(john.show_name).to eq("John")
  end

  it "returns points of a player" do
    expect(john.get_score).to eq described_class::DEFAULT_HIT_POINTS
  end

  it "receives damage and decreases score" do
    john.receive_damage
    expect(john.get_score).to eq 50
  end

  it "decrements the score" do
    john.decrease_score
    expect(john.get_score).to eq 50
  end

end
