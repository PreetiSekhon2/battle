require "game"

describe Game do

  let(:john) {double :john, :receive_damage => true, :get_score => 10}
  let(:jane) {double :jane, :receive_damage => true, :get_score => 0}
  subject(:game) {described_class.new(john,jane)}

  it "attacks player" do
    expect(john).to receive(:receive_damage)
    game.attack(john)
  end

  it "shows current attacker" do
    expect(game.get_current_attacked).to eq(jane)
  end

  it "switches current attacker" do
    game.switch_attacked
    expect(game.get_current_attacked).to eq(john)
  end

  it "checks if game is complete" do
    game.complete?
    expect(game.complete?).to eq true
  end

end
