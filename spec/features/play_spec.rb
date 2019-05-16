require 'player'
describe Player do
  subject(:james) { Player.new('James') }
  subject(:david) { Player.new('David') }

  describe '#name' do
    it 'returns the name' do
      expect(david.name).to eq 'David'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(david.hit_points).to eq described_class::HP
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(james).to receive(:receive_damage)
      david.attack(james)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { james.receive_damage }.to change { james.hit_points }.by(-10)
    end
  end
 end
