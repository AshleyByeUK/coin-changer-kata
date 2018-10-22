class CoinSwapper
  def swap(amount)
    if amount > 0
      coins = []
      [5, 2, 1].each do |coin|
        while amount >= coin
          amount -= coin
          coins.push(coin)
        end
      end
      coins
    else
      [0]
    end
  end
end
