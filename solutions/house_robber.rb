# PROBLEM DESCRIPTION
# You are a professional robber planning to rob houses along a street.
# Each house has a certain amount of money stashed, the only constraint
# stopping you from robbing each of them is that adjacent houses have
# security systems connected and it will automatically contact the police
# if two adjacent houses were broken into on the same night.

# Given an integer array nums representing the amount of money of each house,
# return the maximum amount of money you can rob tonight without alerting the police.

def max_rob(houses)
  houses.each_with_index.reduce(0) do |robbed_money, (house_money, index)|
    next robbed_money if !index.zero? && index % 2 == 0

    robbed_money += house_money
  end
end

examples = [
  [1,2,3,1],
  [2,7,9,3,1]
]

examples.each do |house_example|
  total_robbed = max_rob(house_example)
  p total_robbed
end

