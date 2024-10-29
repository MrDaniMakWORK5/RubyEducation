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
