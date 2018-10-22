class CoinChanger
  def exchange(amount)
    if (amount == nil or amount <= 0)
      [0]
    else
      [amount]
    end
  end
end
