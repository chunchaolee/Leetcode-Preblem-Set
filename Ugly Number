#Write a program to check whether a given number is an ugly number.

#Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.

#Note that 1 is typically treated as an ugly number.



def is_ugly(num)
    
    #Ugly number 必須大於0
    #1 = Ugly number
    #能一直被5整除下去，不能整除時往3去確認
    #能一直被3整除下去，不能整除時往2去確認
    #能一直被2整除，不能整除時餘數必須小於2(等於1)
    
    if num <= 0
        return false
        
    elsif num == 1
        return true
        
    elsif num > 1
        while num % 5 == 0
            num /= 5 
        end
        while num % 3 == 0
            num /= 3
        end
        while num % 2 == 0
            num /= 2
        end
        
        if num < 2
            return true
        else
            return false
        end
        
    else
        return false
    end
end

puts "num: -60 , #{is_ugly(-60)}"
puts "num: 1 , #{is_ugly(1)}"
puts "num: 14 , #{is_ugly(14)}"
puts "num: 18 , #{is_ugly(18)}"
puts "num: 36 , #{is_ugly(36)}"
puts "num: 84 , #{is_ugly(84)}"
