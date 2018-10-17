require "Game"

describe Game do

  subject(:game) {described_class.new}
  let(:john) {double :john, :receive_damage => true}

  it "attacks an opponent " do
    expect(john).to receive(:receive_damage)
    game.attack(john)
  end

end
