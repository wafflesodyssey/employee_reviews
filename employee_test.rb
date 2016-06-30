require "minitest/autorun"
require "./employee_class"

class EmployeeTest < MiniTest::Test
  def test_employee_name
    patty = Employee.new('Patty', 'pattybell@gmail.com', '7033961582', 50000.00)
    assert_equals = 'Patty'
  def test_employee_exists
    assert Employee
  end
  end
end
