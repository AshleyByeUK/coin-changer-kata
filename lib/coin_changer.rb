class CoinChanger
  COINS = [200, 100, 50, 20, 10, 5, 2, 1]

  def exchange(amount)
    if (amount == nil or amount <= 0)
      [0]
    else
      build_list_of_coins(amount)
    end
  end

  def build_list_of_coins(amount)
    coins = []
    amount_remaining = amount
    COINS.each do |coin|
      number_of_coin = amount_remaining / coin
      coins = add_coins(coins, coin, number_of_coin)
      amount_remaining = amount_remaining % coin
    end
    coins
  end

  def add_coins(current_coins, coin, number_of_coin)
    coins = current_coins.dup
    for i in 1..number_of_coin do
      coins.push(coin)
    end
    coins
  end
end
