array = [9, 8, 8, 5]
k = 3

class MaximizeArray
  def initialize(array, k)
    @array = array
    @k = k
  end

  def maximize
    #Todo: o número 5, mesmo sendo positivo sofre alteração para negativo e não consegue ser positivo novamente, pois
    # são usadas apenas k=3 tentativas. Por issom não é possível que a soma maxima seja 30.
    # Todo: refatorar usando select funçao
    @index = -1
    @score = 0
    sorted_array = @array.sort
    @k.times do
      break if @score == @k
      @index += 1
      if sorted_array[@index] < 0
        sorted_array[@index] = sorted_array[@index] * (-1)
        @score += 1
      elsif sorted_array[@index] == 0
        return sorted_array.sum
      else
        #Todo tratar o caso do número ser positivo e ser o mínimo dos positivos
        remaining_moves = @k - @score
        if remaining_moves.even?
          return sorted_array.sum
        else
          only_positives = sorted_array.select { |number| number > 0 }
          only_positives[0] * (-1)
          only_negatives = sorted_array.select { |number| number < 0 }

          return only_positives.sum + only_negatives.sum
        end
      end
    end
  end

end

result = MaximizeArray.new(array, k).maximize
p result