class CoinSwapper
  COINS = [200, 100, 50, 20, 10, 5, 2, 1].freeze

  def swap(amount)
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

# Enumerable module, use inject.
