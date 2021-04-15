def reduce_abc(str)
  return str if str.split('').map(&:bytes).flatten.uniq.count == 1

  arr_string = str.split('')
  selected_chars = nil
  for i in 0..(arr_string.length - 1)
    if arr_string[i].bytes != arr_string[i + 1].bytes
      selected_chars = arr_string[i].bytes + arr_string[i + 1].bytes
      arr_string.delete_at(i)
      # delete the new i element
      arr_string.delete_at(i)
      break
    end
  end
  return str unless selected_chars

  resultant_string = arr_string.join('')
  reduce_abc(resultant_string << missing_element(selected_chars))
end

def missing_element(selected_chars)
  missing_char = [97, 98, 99] - selected_chars
  missing_char.pack('c*')
end

samples = %w[cab bcab ccccc]
samples.each do |sample|
  result = reduce_abc(sample)
  puts result.length
end
