array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
number = 55
class JumpSearch
  def initialize(array, number)
    puts "init jump search"
    @array = array
    @number = number
    @array_length = @array.length
  end

  def search
    puts "In search"
    index = 0
    while index <= @array_length
      puts "Index is: #{index}."
      index += jump(@array_length)
    end

  end

  #TODO: Comparison function and calling linear search

  def jump(array_length)
    "jump array"
    jump = Math.sqrt array_length
    puts jump.to_i
    jump.to_i
  end
end

result = JumpSearch.new(array, number).search
puts result