#Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

#You may assume that the array is non-empty and the majority element always exist in the array.


# @param {Integer[]} nums
# @return {Integer}
#array size 要大於等於3
#知道標準是多少，array size / 2
#建一個新的array統計重複次數
#用迴圈找出符合標準的數字

def majority_element(nums)
    
  numssize = nums.size
  spec = numssize / 2 

  hsnums = Hash.new(0)

  nums.each do |num|
    hsnums[num] += 1
    if hsnums[num] > spec
      return num
    end
  end

  return 0

end
