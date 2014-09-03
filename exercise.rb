class Exercise
  attr_reader :category, :duration_in_min, :intensity

  def initialize(exercise_data)
    @name = exercise_data[:name]
    @category = exercise_data[:category]
    @duration_in_min = exercise_data[:duration_in_min]
    @intensity = exercise_data[:intensity]
  end

  def calories_burned
    if self.category == "cardio"
      if self.intensity == "high"
        self.duration_in_min * 10.0
      elsif intensity == "medium"
        self.duration_in_min * 8.0
      elsif self.intensity == "low"
        self.duration_in_min * 5.0
      end
    else
      self.duration_in_min * 6.0
    end
  end
end
