require 'Player'

describe Player do
  subject(:itchy) { Player.new('Itchy') }
  subject(:scratchy) { Player.new('Scratchy') }
  
  describe '#name' do
    it 'returns its name' do
    expect(itchy.name).to eq 'Itchy'
    end
  end

  describe '#damaged' do
    it 'reduces HP by 10' do
      expect { scratchy.damaged }.to change { scratchy.hp }.by -10    
    end
  end

end

