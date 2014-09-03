class Exercise
  attr_reader :category, :duration_in_min, :intensity

  def initialize(exercise_data)
    @name = exercise_data[:name]
    @category = exercise_data[:category]
    @duration_in_min = exercise_data[:duration_in_min]
    @intensity = exercise_data[:intensity]
  end
end
