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
    patty = Employee.new('Patty Bell', 'pattybell@gmail.com', '7033961582', 50000.00)
    elizabeth = Employee.new('Elizabeth Hoover', 'ehoover@gmail.com', '7033961200', 54000.00)
    otto = Employee.new('Otto Man', 'ottoman@gmail.com', '7033961208', 57000.00)
    english = Department.new('English')
    english.add_employee(patty)
    english.add_employee(elizabeth)
    english.add_employee(otto)
    assert_equal [patty, elizabeth, otto ], english.department_list
  end

end
