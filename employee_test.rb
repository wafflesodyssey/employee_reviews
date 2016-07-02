require "minitest/autorun"
require "./employee"

class EmployeeTest < MiniTest::Test
  def test_employee_exists
    assert Employee
  end

  def test_employee_name
    patty     = Employee.new('Patty Bell', 'pattybell@gmail.com', '7033961582', 50000.00)
    elizabeth = Employee.new('Elizabeth Hoover', 'ehoover@gmail.com', '7033961200', 54000.00)
    otto      = Employee.new('Otto Man', 'ottoman@gmail.com', '7033961208', 57000.00)

    assert_equal 'Patty Bell', patty.name
    assert_equal 'Elizabeth Hoover', elizabeth.name
    assert_equal 'Otto Man', otto.name
  end


  def test_employee_salary
    patty     = Employee.new('Patty Bell', 'pattybell@gmail.com', '7033961582', 50000.00)
    elizabeth = Employee.new('Elizabeth Hoover', 'ehoover@gmail.com', '7033961200', 54000.00)
    otto      = Employee.new('Otto Man', 'ottoman@gmail.com', '7033961208', 57000.00)

    assert_equal 50000.00, patty.salary
    assert_equal 54000.00, elizabeth.salary
    assert_equal 57000.00, otto.salary
  end

  def test_employee_review
    patty  = Employee.new('Patty Bell', 'pattybell@gmail.com', '7033961582', 50000.00)
    review = "Patty Bell has been consistent with teaching in the English
      department for a while now. She has a solid foundation and continues to
      improve her methods. She is also seen to be good with helping the students."
    patty.review = review
    assert_equal review, patty.review
  end

  def test_employee_performance
    patty  = Employee.new('Patty Bell', 'pattybell@gmail.com', '7033961582', 50000.00)
    performance = "satisfactorily"
    patty.performance = performance
    assert_equal performance, patty.performance
  end

  def test_employee_raise
    patty  = Employee.new('Patty Bell', 'pattybell@gmail.com', '7033961582', 50000.00)
    pre_raise_salary = patty.salary
    patty.give_raise(1.1)
    assert_equal pre_raise_salary*1.1, patty.salary
  end

end
