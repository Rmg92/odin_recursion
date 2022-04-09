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
  # merged_array = []
  # unless left_branch is empty or right_branch is empty
  # if left_branch[0] smaller than right_array[0]
  # push left_branch[0] to merged_array
  # else
  # push right_branch[0] to merged_array
  # if left_branch is empty
  # push right_branch to merged_array
  # elsif right_branch is empty
  # push left_branch to merged_array
end

arr = Array[4, 1, 6, 8, 2, 3, 5, 7]
p merge_sort(arr)
