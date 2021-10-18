def stock_picker(arr)
  greatest_profit = 0
  output = Array.new(2)
  
  arr.each_with_index do |buy_price, buy_day|
      arr.each_with_index do |sell_price, sell_day|
          next if sell_day <= buy_day
          if sell_price - buy_price >= greatest_profit
            greatest_profit = sell_price - buy_price 
            output[0] = buy_day
            output[1] = sell_day
          end
      end
  end
  output
end

p stock_picker([17,3,6,9,15,8,6,1,10]) #=> [1,4]  # for a profit of $15 - $3 == $12
p stock_picker([17,14,6,9,15,8,6,1,10])