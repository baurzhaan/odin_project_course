=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
=end

def stock_picker(stock_prices)
  delta = { profit: 0, buy_day: 0, sell_day: 0 }

  stock_prices.each_with_index do |external_value, external_index|
    stock_prices[external_index + 1, stock_prices.size].each_with_index do |internal_value, internal_index|
      if internal_value - external_value > delta[:profit]
        delta[:profit] = internal_value - external_value
        delta[:buy_day] = external_index
        delta[:sell_day] = external_index + 1 + internal_index
      end
    end
  end
  delta[:buy_day] == delta[:sell_day] ? 'You better not to sell anything yet' : [delta[:buy_day], delta[:sell_day]]
end

stock_prices = [17,3,6,9,15,8,6,1,10]
p stock_picker(stock_prices)

stock_prices = [1,2,3,4,5,6,7,8,9,10]
p stock_picker(stock_prices)

p stock_picker(stock_prices.reverse)
