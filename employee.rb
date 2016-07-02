#Employee class

class Employee
  attr_reader :name, :salary
  attr_accessor :review, :performance

  def initialize(name, email, phone, salary)
    @name   = name
    @email  = email
    @phone  = phone
    @salary = salary
  end

  def give_raise(percent)
    @salary = @salary * percent
  end
end
