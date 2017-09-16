def contains_duplicate(nums)
    #先把Array內整數依小至大做排序
    #然後分兩種情況 1) nums[0] 不等於0 2) nums[0]等於0
    #假設nums[0] 不等於0時，宣告一個整數型態變數temp初值為0，透過.each去比較nums element是否相同，相同則回傳true，匹配都不同則回傳false
    #nums[0]等於0時分兩種情況 1) nums[1]也等於0 2) nums[1]不等於0也不是空的nil
    #nums[0]等於0時, 若nums[1]也等於0，則回傳true
    #nums[0]等於0時, 若nums[1]不等於0也不是空的nil時，透過.each去比較nums element是否相同，相同則回傳true，匹配都不同則回傳false
    
    temp = 0
    nums.sort!
    # nums[0] > 0 or nums[0] <0
    if nums[0] != 0
        nums.each do |num|
            if num == temp
             return true
            else
             temp = num
            end
        end
    return false
        
    # nums[0] == 0 && nums[1] also == 0
    elsif nums[0] == 0 && nums[1] == 0
        return true

    # nums[0] == 0 && nums[1] != 0 (nums[1]>0) && nums[1] != nil
    elsif nums[0] == 0 && nums[1] != 0 && nums[1] != nil
        temp == -1 #改變temp初值不等於0
        nums.each do |num|
            if num == temp
             return true
            else
             temp = num
            end
        end
    else
        return false
    end  
   
end
