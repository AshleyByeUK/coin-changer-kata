require 'rspec'
require 'coin_changer'

describe CoinChanger do
  context "when a non-value is specified" do
    it "returns a list containing zero" do
      assertExchanged(0, [0])
      assertExchanged(-1, [0])
      assertExchanged(nil, [0])
    end
  end

  context "when a coin value is specified" do
    it "returns a list containing the correct coins" do
      assertExchanged(1, [1])
      assertExchanged(2, [2])
      assertExchanged(3, [2, 1])
      assertExchanged(4, [2, 2])
      assertExchanged(5, [5])
      assertExchanged(6, [5, 1])
      assertExchanged(7, [5, 2])
      assertExchanged(8, [5, 2, 1])
      assertExchanged(9, [5, 2, 2])
      assertExchanged(10, [10])
      assertExchanged(11, [10, 1])
      assertExchanged(20, [20])
      assertExchanged(50, [50])
      assertExchanged(100, [100])
      assertExchanged(200, [200])
    end
  end
end

def assertExchanged(amount, expected)
  changer = CoinChanger.new()
  expect(changer.exchange(amount)).to eq expected
end
