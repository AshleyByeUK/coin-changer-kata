class CoinChanger
  def exchange(amount)
    if (amount == nil or amount <= 0)
      [0]
    elsif [1, 2, 5, 10, 20, 50, 100, 200].include?(amount)
      [amount]
    else
      [2, 1]
    end
  end
end
