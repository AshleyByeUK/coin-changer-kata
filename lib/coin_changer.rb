class CoinChanger
  def exchange(amount)
    if (amount == nil or amount <= 0)
      [0]
    elsif [200, 100, 50, 20, 10, 5, 2, 1].include?(amount)
      [amount]
    else
      count_coins(amount)
    end
  end

  def count_coins(amount)
    coins = []
      [100, 50, 20, 10, 5, 2, 1].each do |coin|
        if amount / coin > 0
          number_of_coins = amount / coin
          add_coins(coins, coin, number_of_coins)
          amount = amount % coin
        end
      end
      coins
  end

  def add_coins(current_coins, coin, number)
    for i in 1..number do
      current_coins.push(coin)
    end
  end
end
