require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2)}
  let(:player1) {double :player, name: "Kiril", hp: 60}
  let(:player2) { double :player, name: "Krzysztof", hp: 60}

  describe '#attack' do
    it ' change the hp of player2 by 10' do
      expect{ game.attack(player2) }.to change{ player2.hp }.by -10
    end
  end
end
