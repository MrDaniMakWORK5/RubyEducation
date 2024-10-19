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

def findLowestDivider(num)
  num.upto(num-1).drop(1).each{
    |div|
    if num % div == 0
      return div
    end
  }
end

def findMaxNum(num)
  max = 2
  divider = findLowestDivider(num)
  num.upto(num-1).drop(1).each{
    |poten_max|
    if poten_max % divider != 0 && poten_max > max
      max = poten_max
    end
  }
  return max
end

def digitSum(num)
  sum = 0
  num.digits.each{
    |dig|
    if dig < 5
      sum += dig
    end
  }
  return sum
end

def crazyMulty(num)
  return (findMaxNum(num)*digitSum(num))
end

functions = Array[lambda {|arg| evenNumberCount(arg)}, lambda {|arg| digitMax(arg)}, lambda {|arg| crazyMulty(arg)}]
puts ARGV[1]
file = File.open("#{ARGV[1]}", "r")
  line = readStream.gets
  array = line.split(' ')
  puts "---Line---"
  for i in 0...array.length
    num = array[i].to_i
    puts "Function result: "
    method = functions[ARGV[0]] 
    puts method.call(num)
  end
#end

