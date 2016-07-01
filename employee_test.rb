require "minitest/autorun"
require "./employee_class"

class EmployeeTest < MiniTest::Test
  def test_employee_exists
    assert Employee
  end

  def test_employee_name
    patty = Employee.new('Patty Bell', 'pattybell@gmail.com', '7033961582', 50000.00)
    elizabeth = Employee.new('Elizabeth Hoover', 'ehoover@gmail.com', '7033961200', 54000.00)
    otto = Employee.new('Otto Man', 'ottoman@gmail.com', '7033961208', 57000.00)
    assert_equal 'Patty Bell', patty.name
    assert_equal 'Elizabeth Hoover', elizabeth.name
    assert_equal 'Otto Man', otto.name

  end



  def test_employee_salary
    patty = Employee.new('Patty Bell', 'pattybell@gmail.com', '7033961582', 50000.00)
    elizabeth = Employee.new('Elizabeth Hoover', 'ehoover@gmail.com', '7033961200', 54000.00)
    otto = Employee.new('Otto Man', 'ottoman@gmail.com', '7033961208', 57000.00)
    assert_equal 50000.00, patty.salary
    assert_equal 54000.00, elizabeth.salary
    assert_equal 57000.00, otto.salary
  end


end



# employee = ['PattyBell', 'ElizabethHoover', 'OttoMan']
#
  # review_text "Patty Bell has been consistent with teaching in the English
  #department
  # for a while now. She has a solid foundation and continues to improve her
  #   methods. She is also seen to be good with helping the students"
