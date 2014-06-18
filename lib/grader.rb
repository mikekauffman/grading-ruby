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
end