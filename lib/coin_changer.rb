class CoinChanger
  def exchange(amount)
    if (amount == nil or amount <= 0)
      [0]
    elsif [200, 100, 50, 20, 10, 5, 2, 1].include?(amount)
      [amount]
    else
      coins = []
      number_of_coins = amount / 2
      for i in 1..number_of_coins do
        coins.push(2)
      end
      remaining_amount = amount % 2
      for i in 1..remaining_amount do
        coins.push(1)
      end
      coins
    end
  end
end
