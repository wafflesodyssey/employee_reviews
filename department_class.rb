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


end
