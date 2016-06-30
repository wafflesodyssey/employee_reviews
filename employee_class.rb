#Employee class

class Employee
  attr_reader :name
  attr_reader :salary
  def initialize(name, email, phone, salary)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
  end
end
