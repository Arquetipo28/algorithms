arr = [1, 9, 3, 10, 4, 20, 2]
arr = [36, 41, 56, 35, 44, 33, 34, 92, 43, 32, 42]

def lcs(arr)
  arr.sort!
  arr_length = arr.length
  current_block = 0
  result = []
  return 1 if arr_length == 1

  [1, 3]
  for i in 0..(arr_length - 1)
    result[current_block] ||= []
    if (arr[i] + 1) == arr[i + 1]
      result[current_block] << arr[i] 
    else
      # [[1, 2, 3, 4, 9, 10], [20]]
      if (arr[i - 1] == arr[i] - 1)
        current_block += 1
        result[current_block - 1] << arr[i]
      else
        result[current_block] ||= []
        result[current_block] << arr[i]
      end
    end
  end
  max_value = 0
  max_value_index = nil
  result.each_with_index.find do |created_arrays, i|
    cr_len = created_arrays.length 
    if cr_len > max_value
      max_value = cr_len
      max_value_index = i
    end
  end

  result[max_value_index]
end

puts lcs(arr).length
