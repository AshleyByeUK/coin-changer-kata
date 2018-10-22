class CoinExchanger
  def exchange(amount)
    coins = []
    while amount >= 5
      coins.push(5)
      amount -= 5
    end
    while amount > 2
      coins.push(2)
      amount -= 2
    end
    if amount > 0 or coins.length == 0
      coins.push(amount)
    end
    coins
  end
end
