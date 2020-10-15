require 'player'

describe Player do
  let(:player1) { described_class.new("abc") }
  let(:player2) { Player.new("cba") }

  describe '#initialize' do
    it 'has a name' do
      expect(player1.name).to eq("abc")
    end
    it 'has a hp equal 60' do
      expect(player1.hp).to eq 60
    end

    describe '#attack' do
      it ' change the hp of player2 by 10' do

        expect{ player1.attack(player2) }.to change{ player2.hp }.by -10
      end
    end

  end
end
