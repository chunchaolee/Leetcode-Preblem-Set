# 先處理例外（n == 1）
  
  

  # 把 n 除以 2，如果
    # 餘數是 1 ⇒ n 不是 2 的次方
    # 餘數是 0 而答案是 1 ⇒ n 是 2 的次方
    # 餘數是 0 而答案 > 1 ⇒ 重複此步驟
  def is_power_of_two(n)
    #n==1 , 為2的0次方
    #n%2 != 0 or n < 0 false
    #n%2==0, n/2 > 1
    
    if n == 1
        return true
    elsif n % 2 != 0 || n <= 0
        return false
    else
        while n % 2 == 0
            n /=2
        end
        if n == 1
            return true
        else
            return false
        end
    end
    
end


puts "When n = 1, #{is_power_of_two(1)}" # should return true.
puts "When n = 2, #{is_power_of_two(2)}" # should return true.
puts "When n = 7, #{is_power_of_two(7)}" # should return false.
puts "When n = 12, #{is_power_of_two(12)}" # should return false.
puts "When n = 16, #{is_power_of_two(16)}" # should return true.
