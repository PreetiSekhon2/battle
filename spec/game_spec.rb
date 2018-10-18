require "game"

describe Game do

  let(:john) {double :john, :receive_damage => true, :get_score => 10, :show_name => "John"}
  let(:jane) {double :jane, :receive_damage => true, :get_score => 0,  :show_name => "Jane"}
  subject(:game) {described_class.new(john,jane)}

  it "attacks player with hard move" do
    expect(john).to receive(:receive_damage)
    game.attack(john,3,false)
  end

  it "shows current attacker" do
    expect(game.get_current_attacked.show_name).to eq("Jane")
  end

  it "switches current attacker" do
    game.switch_turn
    expect(game.get_current_attacked.show_name).to eq("John")
  end

  it "checks if game is complete" do
    expect(game.complete?).to eq true
  end

end
