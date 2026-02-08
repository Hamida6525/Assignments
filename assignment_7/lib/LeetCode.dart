/*121. Best Time to Buy and Sell Stock*/

/*You are given an array prices where prices[i] is the price of a given stock on the ith day.
   You want to maximize your profit by choosing a single day to buy one stock and
   choosing a different day in the future to sell that stock.*/

int maxProfit(List<int> prices) {
  int minPrice = prices[0];
  int maxProfit = 0;

  for (int i = 1; i < prices.length; i++) {
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    } else if (prices[i] - minPrice > maxProfit) {
      maxProfit = prices[i] - minPrice;
    }
  }
  return maxProfit;
}