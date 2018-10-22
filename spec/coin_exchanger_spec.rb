require 'rspec'
require 'coin_exchanger'

describe CoinExchanger do
  context "with the specified amount" do
    it "returns a list of coins" do
      changer = CoinExchanger.new()
      expect(changer.exchange(0)).to eq [0]
    end
  end
end