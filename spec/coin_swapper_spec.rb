require 'rspec'
require 'coin_swapper'

describe CoinSwapper do
  context 'with the specified amount' do
    it 'returns a list of coins' do
      swapper = CoinSwapper.new()
      expect(swapper.swap(0)).to eq [0]
    end
  end
end
