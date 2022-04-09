# frozen_string_literal: true

def merge_sort(arr)
  if arr.length < 2
    arr
  else
    merge_sort(arr[0, arr.length / 2])
    merge_sort(arr[arr.length / 2, arr.length])
  end
end

arr = Array[4, 1, 6, 8, 2, 3, 5, 7]
p merge_sort(arr)
