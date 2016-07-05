require "minitest/autorun"
require "./department"
require "./employee"


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
    assert_equal [ patty, elizabeth, otto ], english.department_list
  end

  def test_total_salary_of_department
    patty = Employee.new('Patty Bell', 'pattybell@gmail.com', '7033961582', 50000.00)
    elizabeth = Employee.new('Elizabeth Hoover', 'ehoover@gmail.com', '7033961200', 54000.00)
    otto = Employee.new('Otto Man', 'ottoman@gmail.com', '7033961208', 57000.00)
    english = Department.new('English')
    english.add_employee(patty)
    english.add_employee(elizabeth)
    english.add_employee(otto)
    english.total_salary
    assert_equal 161000, english.total_salary
  end

  def test_give_raise_of_department
    patty = Employee.new('Patty Bell', 'pattybell@gmail.com', '7033961582', 50000.00)
    patty.performance = 'satisfactorily'
    elizabeth = Employee.new('Elizabeth Hoover', 'ehoover@gmail.com', '7033961200', 54000.00)
    elizabeth.performance = 'not satisfactorily'
    otto = Employee.new('Otto Man', 'ottoman@gmail.com', '7033961208', 57000.00)
    otto.performance = 'satisfactorily'

    english = Department.new('English')

    english.add_employee(patty)
    english.add_employee(elizabeth)
    english.add_employee(otto)

    pre_raise_patty_salary = patty.salary
    pre_raise_elizabeth_salary = elizabeth.salary
    pre_raise_otto_salary = otto.salary

    pre_raise_department_salary = english.total_salary

    english.give_raise(7_000)

    assert_equal elizabeth.salary, pre_raise_elizabeth_salary

    assert_equal department.total_salary, pre_raise_department_salary + 7_000
  end
end
