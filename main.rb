# frozen_string_literal: true

# Linear search
def linear_search(list, target)
  list.each_with_index do |element, index|
    return index if element == target
  end
end

puts linear_search([1, 2, 5, 123, 5, 7, 34, 2, 24], 7)

# Binary search
def binary_search(list, target)
  low = 0
  high = list.length - 1
  while low <= high
    mid = (low + high) / 2
    if list[mid] == target
      return mid
    elsif list[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
end

puts binary_search([1, 2, 5, 123, 5, 7, 34, 2, 24], 34)

# Interpolation search
def interpolation_search(list, target)
  low = 0
  high = list.length - 1
  while low <= high && target >= list[low] && target <= list[high]
    pos = low + ((target - list[low]) * (high - low)) / (list[high] - list[low])
    if list[pos] == target
      return pos
    elsif list[pos] < target
      low = pos + 1
    else
      high = pos - 1
    end
  end
end

puts interpolation_search([1, 2, 5, 123, 5, 7, 34, 2, 24], 5)

# Ternary search
def ternary_search(l, r, &block)
  while r >= l
    mid1 = l + (r - l) / 3
    mid2 = r - (r - l) / 3
    if block.call(mid1) < block.call(mid2)
      l = mid1 + 1
    else
      r = mid2 - 1
    end
  end
  block.call(l)
end


f = ->(x) { -(x - 3)**2 + 5 }

# Find the maximum value of the function in the range [0, 6]
max_value = ternary_search(0, 6, &f)

# Print the result
puts "The maximum value of the function is #{max_value} at x = #{3}"
