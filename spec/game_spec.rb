require 'game'

describe Game do

let(:game) { described_class.new(player_1, player_2) }
let(:player_1) { double :player }
let(:player_2) { double :player }

describe '#player1' do
  it 'gets player 1' do
    expect(game.player_1).to eq player_1
  end
end

describe '#player_2' do
  it 'gets player 2' do
    expect(game.player_2).to eq player_2
  end
end

  describe '#attack' do
    it 'attacks the other player' do
      expect(player_2).to receive(:damaged)
      game.attack(player_2)
    end
  end

  describe '#current_turn' do
    it 'begins with player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#swap_turns' do
    it 'changes the current player' do
    expect(game.swap_turns).to eq player_2
    end
  end

  describe '#defeated?' do
    it 'checks if a player has no HP' do
    a = Player.new('A', 0)
    b = Player.new('B', 0)
    game = Game.new(a,b)
    expect(game.defeated?).to eq true
    end
  end
  
  

end