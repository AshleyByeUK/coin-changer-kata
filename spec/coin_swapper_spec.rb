require 'rspec'
require 'coin_swapper'

describe CoinSwapper do
  context 'with the specified amount' do
    it 'returns a list of coins' do
      assert_swaps(0, [0])
      assert_swaps(1, [1])
      assert_swaps(2, [2])
    end
  end
end

def assert_swaps(amount, coins)
  swapper = CoinSwapper.new()
  expect(swapper.swap(amount)).to eq coins
end
