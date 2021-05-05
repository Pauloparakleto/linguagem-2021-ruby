array = [-2, 0, 5, -1, 2]
k = 4

class MaximizeArray
  def initialize(array, k)
    @array = array
    @k = k
  end

  def maximize
    #Todo: o número 5, mesmo sendo positivo sofre alteração para negativo e não consegue ser positivo novamente, pois
    # são usadas apenas k=3 tentativas. Por issom não é possível que a soma maxima seja 30.
    # Todo: refatorar usando select funçao
    @score = 0
    p "score is #{@score}"
    sorted_array = @array.sort
    p "sorted array #{sorted_array}"

    @negative_array = sorted_array.select { |number| number < 0 }
    p "negative array #{@negative_array}"
    @positive_array = sorted_array.select { |number| number > 0 }
    p "positive array #{@positive_array}"
    @negative_array.map! do |number|
      p "In negative array block"
      p "Score was #{@score}"
      p "number was #{number}"
      number = number * (-1)
      p "Become #{number}"
      @score += 1
      p "Now score is #{@score}"
      if @score == @k
        p "Score reach k possibilities"
        p "return sum"
        return @negative_array.sum + @positive_array.sum
      end
      number
    end

    p "negative array now is: #{@negative_array} "

    @zero_array = sorted_array.select { |number| number == 0 }
    @zero_array.map! do
      p 'There is a zero number'
      return @negative_array.sum + @positive_array.sum
    end
    @positive_array.map! do |number|
      if @k.even?
        p 'k is even return sum'
        return @positive_array.sum + @negative_array.sum
      else
        number * (-1)
        @score += 1
        return @positive_array.sum + @negative_array.sum if @score == @k
      end
    end
  end
end

result = MaximizeArray.new(array, k).maximize
p result