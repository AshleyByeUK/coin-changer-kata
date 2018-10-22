class CoinExchanger
  def exchange(amount)
    coins = []
    while amount > 2
      coins.push(2)
      amount -= 2
    end
    coins.push(amount)
  end
end
