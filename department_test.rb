require "minitest/autorun"
require "./department_class"
require "./employee_class"


class DepartmentTest < MiniTest::Test

  def test_department_exists
    assert Department
  end

  def test_department_name
    english = Department.new('English')
    assert_equal 'English', english.name
  end

  def test_add_name_to_department
    patty = Employee.new('Patty', 'pattybell@gmail.com', '7033961582', 50000.00)
    english = Department.new('English')
    english.add_employee(patty)
    assert_equal [patty], english.department_list
  end

  




end
