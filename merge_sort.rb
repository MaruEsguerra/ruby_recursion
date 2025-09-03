def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid..-1]
  result = []

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)
  result = merge(sorted_left, sorted_right)

  result
end

def merge(left, right)
  result = []
  i = 0
  j = 0

  # While both sides still have elements
  while i < left.length && j < right.length
    if left[i] <= right[j]
      result << left[i]
      i += 1
    else
      result << right[j]
      j += 1
    end
  end

  result.concat(left[i..-1]) if i < left.length
  result.concat(right[j..-1]) if j < right.length

  result
end

# Testing area
p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])