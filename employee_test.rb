require "minitest/autorun"
require "./employee_class"

class EmployeeTest < MiniTest::Test
  def test_employee_exists
    assert Employee
  end

  def test_employee_name
    patty = Employee.new('Patty', 'pattybell@gmail.com', '7033961582', 50000.00)
    assert_equal 'Patty', patty.name
  end

  def test_employee_salary


end



# employee = ['PattyBell', 'ElizabethHoover', 'OttoMan']
#
  # review_text =  "Patty Bell has been consistent with teaching in the English department
  # for a while now. She has a solid foundation and continues to improve her
  #   methods. She is also seen to be good with helping the students"
