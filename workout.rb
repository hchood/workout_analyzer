require_relative 'exercise'

class Workout
  attr_reader :exercises, :id, :date

  def initialize(id, workout_data, exercises = [])
    @id = id
    @date = workout_data[:date]
    @exercises = exercises
  end

  def type
    if exercise_percentage("cardio") >= 0.50
      "cardio"
    elsif exercise_percentage("strength") >= 0.50
      "strength"
    else
      "other"
    end
  end

  def duration
    total = 0.0

    @exercises.each do |exercise|
      total += exercise.duration_in_min
    end

    total
  end

  def calories_burned
    calories = 0.0

    @exercises.each do |exercise|
      calories += exercise.calories_burned
    end

    calories
  end

  private

  def exercise_percentage(exercise_type)
    exercise_count = 0

    @exercises.each do |exercise|
      if exercise.category == exercise_type
        exercise_count += 1
      end
    end

    exercise_count.to_f / @exercises.length
  end
end
