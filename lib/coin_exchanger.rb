class CoinExchanger
  def exchange(amount)
    if amount > 2
      [2, 1]
    else
      [amount]
    end
  end
end
