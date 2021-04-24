list = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]
number = 110

def search(list, number)
  index = -1
  list = list
  number = number

  list.length.times do
    index += 1
    if list[index] == number
      return index
    end
  end
  -1

end

result = search(list, number)

puts result


