class CoinSwapper
  COINS = [200, 100, 50, 20, 10, 5, 2, 1].freeze

  def swap(amount)
    coins = [0] unless amount > 0
    coins = compute_coins_for_swap(amount) if amount > 0
    coins
  end

  private

  def compute_coins_for_swap(amount)
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
