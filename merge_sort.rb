# Merge Sort
# Create a recursive way to merge sort.
#   Approach:
#     Sort the left half of the array (assuming n > 1)
#     Sort the right half of the array
#     Merge the two halves together
#

def merge_sort(array)

  return array if array.length < 2

  mid = array.length / 2
  left = array[0...mid]
  right = array[mid..-1]
  sorted_left = merge_sort(array[0...mid])
  sorted_right = merge_sort(array[mid..-1])

  merged_array = merge(sorted_left,sorted_right)
  return merged_array
end

def merge(left,right)
  result = []
  while left.length > 0 && right.length > 0
    if left[0] <= right[0]
      result.append(left.shift)
    else
      result.append(right.shift)
    end
  end

  while left.length > 0
    result.append(left.shift)
  end

  while right.length > 0
    result.append(right.shift)
  end

  return result
end

p merge_sort([5,1,2,4,23,37,12,11,9,3,13,64,13,573,1,3,56,7,])
