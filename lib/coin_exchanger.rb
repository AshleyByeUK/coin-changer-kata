class CoinExchanger
  def exchange(amount)
    coins = []
    if amount > 0
      [20, 10, 5, 2, 1].each do |coin|
        while amount >= coin
          coins.push(coin)
          amount -= coin
        end
      end
    else
      coins.push(0)
    end
    coins
  end
end
