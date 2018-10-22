class CoinSwapper
  COINS = [200, 100, 50, 20, 10, 5, 2, 1]

  def swap(amount)
    if amount > 0
      compute_coins_for_swap(amount)
    else
      [0]
    end
  end

  private def compute_coins_for_swap(amount)
    coins = []
    COINS.each do |coin|
      while amount >= coin
        amount -= coin
        coins.push(coin)
      end
    end
    coins
  end
end
