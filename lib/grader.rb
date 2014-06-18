class Grader
  def initialize(input_array)
    @input_array = input_array
  end
  def compare_grades
    number_of_grades = @input_array.length
    compared_array = []
    i = 0
    (number_of_grades - 1).times do
      compared_array << :even if @input_array[i] == @input_array[i+1]
      compared_array << :down if @input_array[i] > @input_array[i+1]
      compared_array << :up if @input_array[i] < @input_array[i+1]
      i += 1
    end
    compared_array
  end
  def decline_finder
    number_of_grades = @input_array.length
    i = number_of_grades
    (number_of_grades).times do i -= 1
      if (@input_array[i] == :up || @input_array[i-1] == :up || @input_array[i-2] == :up) || (@input_array.length < 3)
        return 'not in decline'
      elsif (@input_array[i] == :down || :even) && (@input_array[i-1] == :down || :even) && (@input_array[i-2]  == :down || :even) && (@input_array[i-3] == :down || :even)
        return 'in decline'
      end
    end
  end
end