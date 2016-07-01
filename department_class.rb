#Department class

class Department
  attr_reader :name
  attr_reader :department_list
  def initialize(name)
    @name = name
    @department_list = []
  end

  def add_employee(name)
  @department_list << name
  end

  def total_salary
    sum = 0
    @department_list.each do |emp|
      sum += emp.salary
    end
    return sum
  end

end
