prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  max_profit = 0
  best_days = []
  len = prices.length

  (0..len - 1).each do |i|
    (i + 1..len - 1).each do |j|
      current_profit = prices[j] - prices [i]

      next unless current_profit > max_profit

      max_profit = current_profit
      best_days = [i, j]
    end
  end
  best_days
end

p stock_picker(prices)
p stock_picker([17, 15, 3, 6, 9, 8, 6, 1, 10])
p stock_picker([17, 15, 3, 6, 9, 8, 6, 10, 1])
