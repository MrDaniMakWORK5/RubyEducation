def minInArray(arr)
  min = arr[0]
  counter = 0
  while counter<arr.length do
    if arr[counter] < min
      min = arr[counter]
    end
    counter+=1
  end
  return min
end

puts "Min element in array: #{minInArray(Array[3, 5, -1, 10, -4])}"

def firstPos(arr)
  for i in 0...arr.length
    if arr[i] > 0
      return i
    end
  end
end

puts "First positive element in array: #{firstPos(Array[3, 5, -1, 10, -4])}"