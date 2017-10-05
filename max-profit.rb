#Say you have an array for which the ith element is the price of a given stock on day i.

#If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.

#Example 1:
#Input: [7, 1, 5, 3, 6, 4]
#Output: 5

#max. difference = 6-1 = 5 (not 7-1 = 6, as selling price needs to be larger than buying price)
#Example 2:
#Input: [7, 6, 4, 3, 1]
#Output: 0

#In this case, no transaction is done, i.e. max profit = 0.

#宣告預設的profit = 0, min_prices = prices[1]
#且prices不為空集合
#用for looop 0~ size-1 去比對
#當prices[i] - min_prices > profit時，代表獲利較多，所以將profit=prices[i] - min_prices
#當prices[i] < min_prices時，代表右方元素比現行左邊元素最小值min_prices還小，所以將min_prices= prices[i]
#最後回傳profit，其餘皆回傳0

def max_profit(prices)

  i = 0 
  profit = 0
  min_price = prices[0]
  size = prices.size

  if size != 0
    for i in 0...size
      if prices[i] - min_price > profit
        profit = prices[i] - min_price
      elsif prices[i] < min_price
        min_price = prices[i]
      end
    end
    return profit
  else
    return 0
  end



end
