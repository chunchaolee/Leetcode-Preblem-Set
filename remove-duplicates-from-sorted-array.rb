#Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

#Do not allocate extra space for another array, you must do this in place with constant memory.

#For example,
#Given input array nums = [1,1,2],

#Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.

def remove_duplicates(nums)
    #提供的array為已經排序過的array
    #將重複的移除，使陣列中每個元素都不重複
    #右邊元素＝左邊元素時，全部往左移
    #將左移過後多出來的元素設為nil
    #刪除nil元素用 陣列.delete(nil)
    #回傳新陣列長度
    
    i = 0
    j = 0
    k = 0

    numssize = nums.size

    while i < (numssize - j)
        nums[i] = nums[ i + j ]
        if nums[i] == nums[i + j +1]
            j += 1
            while nums[i + j] == nums[i + j +1]
                j += 1
            end
            nums[i + j] = nums[ i + j + 1]
        end
        i += 1
    end

    for k in (numssize - j)...numssize
        nums[k] = nil   
    end

    nums.delete(nil)

    newsize = nums.size
end
