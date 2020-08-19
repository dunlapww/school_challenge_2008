class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, length_of_day)
    @start_time = start_time
    @hours_in_school_day = length_of_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    mins = @start_time.chars.pop(3).join

    ((@start_time.chop.chop.chop.to_i + @hours_in_school_day) % 24).to_s + mins
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names

    @student_names.map do |student|
      student.downcase.capitalize
    end

  end

end
