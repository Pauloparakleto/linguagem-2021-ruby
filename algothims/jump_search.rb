array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
number = 610

class JumpSearch
  def initialize(array, number)
    puts "init jump search"
    @array = array
    @number = number
    @array_length = @array.length
  end

  def search
    puts "In search"
    @index = 0
    while @index <= @array_length
      puts "Index is: #{@index}."
      if @array[@index] == @number
        return @array.index @number
      end
      if @array[@index] > @number
        @index += jump(@array_length)
      else
        @index -= jump(@array_length)
        linear_search(array: @array, start_index: @index, number: @number)
      end

    end

  end

  def linear_search(array:, start_index:, number:)
    array = array
    @index = start_index
    number = number

    array.length.times do

      if array[@index] == number
        return array.index number
      end
      @index += 1
    end
    return nil
  end

  def jump(array_length)
    "jump array"
    jump = Math.sqrt array_length
    puts jump.to_i
    jump.to_i
  end
end

result = JumpSearch.new(array, number).search
puts result