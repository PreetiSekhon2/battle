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
    score = john.get_score
    john.receive_damage(1)
    expect(john.get_score).to be < score
  end

  it "receives HIGH damage and decreases score multiple times" do
    score = john.get_score
    expect(john).to receive(:decrease_score).exactly(3).times
    john.receive_damage(3)
  end

  it "decrements the score" do
    score = john.get_score
    john.decrease_score
    expect(john.get_score).to be < score
  end

end
