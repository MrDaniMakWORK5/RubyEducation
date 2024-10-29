#variant 10
def evenNumberCount(num)
  count_evens = 0
  num.downto(1).drop(1).each{
    |current|
    if num % current == 0 && current%2 == 0
      count_evens+=1
    end
  }
  return count_evens
end

puts "Amount of evens: #{evenNumberCount(10)}"

def digitMax(num)
  max_digit = 1
  num.digits.each{
    |digit|
    if digit %3!=0 && digit > max_digit
      max_digit = digit
    end
  }
  return max_digit
end

puts "Max digit is: #{digitMax(9532)}"
