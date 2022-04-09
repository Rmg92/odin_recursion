# frozen_string_literal: true

def merge_sort(arr)
  if arr.length < 2
    arr
  else
    left_branch = merge_sort(arr[0, arr.length / 2])
    right_branch = merge_sort(arr[arr.length / 2, arr.length])
    merge(left_branch, right_branch)
  end
end

def merge(left_branch, right_branch)
  merged_array = []
  until left_branch.empty? || right_branch.empty?
    if left_branch[0] < right_branch[0]
      merged_array << left_branch[0]
      left_branch.delete_at(0)
    else
      merged_array << right_branch[0]
      right_branch.delete_at(0)
    end
  end
  if left_branch.empty?
    right_branch.each { |number| merged_array << number }
  elsif right_branch.empty?
    left_branch.each { |number| merged_array << number }
  end
  merged_array
end

arr = Array[4, 1, 6, 8, 2, 3, 5, 7]
p merge_sort(arr)
