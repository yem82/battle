require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1_name) { double :player }
  let(:player_2_name) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2_name).to receive(:receive_damage)
      game.attack(player_2_name)
    end
  end
end
