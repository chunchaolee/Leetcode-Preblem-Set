#Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

#For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].

#Note:
#You must do this in-place without making a copy of the array.
#Minimize the total number of operations.
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    
    #先排序
    #知道有幾個元素是0
    #沒有0元素就不變
    #有0元素，遇到之前都照舊
    #遇到0的元素，右邊的元素全部往前左一格取代0元素位置
    #若剛好右邊元素又等於0則必須繼續往右抓元素來替代這個位置，直到抓到非0元素
    
    
    arraysize = nums.size
    numofzero = 0
    i = 0
    j = 0
    k = 0

    nums.each do |num|
        if num == 0
            numofzero += 1
        end
    end
    
    if numofzero != 0
      while i <= (arraysize - numofzero)
        nums[i] = nums[i+j]
        if nums[i] == 0 
          j += 1
          while nums[i + j] == 0
            j += 1
          end
          nums[i] = nums[i+j]
        end
        i += 1
      end
    end

    while k < numofzero
        nums[arraysize - 1 - k] = 0
        k += 1
      end
    
    
end
