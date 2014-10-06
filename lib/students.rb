class Students
  def all
    [
      {name: "Bob", age: 10},
      {name: "Sue", age: 10},
      {name: "Greg", age: 15},
      {name: "Amanda", age: 8},
      {name: "Steve", age: 22},
    ]
  end

  def average_age
    sum_of_ages = 0
    all.each do |student|
      sum_of_ages = sum_of_ages + student[:age]
    end
    sum_of_ages/all.length
  end

  def name_string
    string = []
    all.each do |student|
      string << student[:name]
    end
    string.join(" ")
  end

  def find_first_older_than(age)
    all.each do |student|
      if student[:age] > age
        return student
      end
    end
  end

  def any_older_than?(age)
    all.each do |student|
      if student[:age] > age
        return true
      end
    end
    false
  end

  def find_student(student_to_find)
    all.each do |student|
      if student == student_to_find
        return student
      end
    end
    nil
  end

  def student_present?(student_to_find)
    all.each do |student|
      if student == student_to_find
        return true
      end
    end
    false
  end

  def grouped_by_age
    hash = {}
    all.each do |student|
      if hash[student[:age]] == nil
        hash[student[:age]] = []
      end
      hash[student[:age]] << student[:name]
    end
    hash
  end

end