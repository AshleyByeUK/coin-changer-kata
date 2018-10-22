class CoinChanger
  def exchange(amount)
    if (amount == nil or amount <= 0)
      [0]
    elsif [200, 100, 50, 20, 10, 5, 2, 1].include?(amount)
      [amount]
    else
      coins = []
      number_of_coins = amount / 2
      add_coins(coins, 2, number_of_coins)
      number_of_coins = amount % 2
      add_coins(coins, 1, number_of_coins)
      coins
    end
  end

  def add_coins(current_coins, coin, number)
    for i in 1..number do
      current_coins.push(coin)
    end
  end
end
