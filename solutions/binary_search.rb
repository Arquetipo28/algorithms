# Wikipedia description of the algorithm https://en.wikipedia.org/wiki/Binary_search_algorithm

def binary_search(elements, element_to_search)
  low_index = 0
  max_index = elements.length - 1
  while low_index <= max_index do
    mid = ((low_index + max_index) / 2).round
    mid_value = elements[mid]
    if mid_value == element_to_search
      return mid_value
    elsif mid_value > element_to_search
      max_index = mid - 1
    else
      low_index = mid + 1
    end
  end
end

def recursive_binary_search(elements, element_to_search)
  return if !elements || elements.size.zero?

  low_index = 0
  max_index = elements.length - 1
  mid_index = ((low_index + max_index) / 2.to_f).ceil
  return elements[mid_index] if elements[mid_index] == element_to_search

  if elements[mid_index] < element_to_search
    splitted_elements = elements[(mid_index + 1)..(elements.length - 1)]
  elsif elements[mid_index] > element_to_search
    splitted_elements = elements[0..(mid_index - 1)]
  end
  recursive_binary_search(splitted_elements, element_to_search)
end


elements = [1, 2, 3, 4, 5, 6]

found_recursive_element = recursive_binary_search(elements, 8)
found_regular_element = binary_search(elements, 5)
p found_recursive_element
p found_regular_element
