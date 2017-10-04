#Given two strings s and t, write a function to determine if t is an anagram of s.

#For example,
#s = "anagram", t = "nagaram", return true.
#s = "rat", t = "car", return false.

#Note:
#You may assume the string contains only lowercase alphabets.

#Follow up:
#What if the inputs contain unicode characters? How would you adapt your solution to such case?

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    
    #確保為純文字字串
    #s跟t字串各自拆分成array
    #在將s及t的array字元轉換成hash.new(0),去加總出現的數量
    #比較hash==hash回傳true, 其他false, https://docs.ruby-lang.org/en/2.0.0/Hash.html
    
    size_s = s.split("").size
    size_t = t.split("").size

    s = s.split("")
    t = t.split("")
    
    news = Hash.new(0)
    newt = Hash.new(0)

    s.each do |char_ss|
        news[char_ss] += 1
      end

    t.each do |char_tt|
        newt[char_tt] += 1
      end

    if news == newt
      return true
    else
      return false
    end   
    
end
