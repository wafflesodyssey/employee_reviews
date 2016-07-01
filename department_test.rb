require "minitest/autorun"
require "./department_class"


class DepartmentTest < MiniTest::Test
 
  def test_department_exists
    assert Department
  end
end
