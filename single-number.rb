#Given an array of integers, every element appears twice except for one. Find that single one.

#Note:
#Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

#創hash.new去以原有元素做key的重複度累加value
#回傳新value值==1的key, h.each {|key, value| puts "#{key} is #{value}" }


def single_number(nums)
   
  newnums = Hash.new(0)

  nums.each do |num|
    newnums[num] += 1
  end

  newnums.each do |k, value|
    if value == 1
      return k
    end
  end

end
