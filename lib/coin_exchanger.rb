class CoinExchanger
  COINS = [200, 100, 50, 20, 10, 5, 2, 1]

  def exchange(amount)
    coins = []
    if amount > 0
      COINS.each do |coin|
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
