require 'rspec'
require 'coin_exchanger'

describe CoinExchanger do
  context "with the specified amount" do
    it "returns a list of coins" do
      changer = CoinExchanger.new()
      assert_exchanges(0, [0])
      assert_exchanges(1, [1])
      assert_exchanges(2, [2])
      assert_exchanges(3, [2, 1])
    end
  end

  def assert_exchanges(amount, change)
    changer = CoinExchanger.new()
    expect(changer.exchange(amount)).to eq change
  end
end
