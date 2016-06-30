require "minitest/autorun"
require "./employee_class"

class EmployeeTest < MiniTest::Test 

  def test_employee_exists
    assert Employee
  end
end
