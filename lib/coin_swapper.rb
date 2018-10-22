class CoinSwapper
  def swap(amount)
    if amount > 0
      coins = []
      while amount >= 5
        amount -= 5
        coins.push(5)
      end
      while amount >= 2
        amount -= 2
        coins.push(2)
      end
      if amount == 1
        coins.push(1)
      end
      coins
    else
      [0]
    end
  end
end
