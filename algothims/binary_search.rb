list = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
number = 38

def binary_search(list, number)
  list_standard = list
  number = number
  p "Call binary search"
  p "list is #{list}"
  return nil if list.nil?

  first_part = take_first_half(list)
  second_part = take_second_half(list)

  if number == first_part.last
    p "sss"
    return list_standard.index number
  end

  if number == second_part.first
    p "sss"
    return list_standard.index number
  end

  if number > first_part.last
    p "number is bigger than last on first part"
    list = second_part
    binary_search(list, number)
  else
    p "number is lower than last on first part"
    list = first_part
    binary_search(list, number)
  end

end

def take_first_half(list)
  p "take the first half"
  list = list
  first_half = []
  index = 0
  half_length = list.length / 2

  while index < half_length
    first_half << list[index]
    index += 1
  end
  p first_half
  first_half
end

def take_second_half(list)
  p "take the second half"
  list = list
  second_half = []
  index = list.length / 2
  list_length = list.length

  while index < list_length
    second_half << list[index]
    index += 1
  end
  p second_half
  second_half
end

result = binary_search list, number
p result

