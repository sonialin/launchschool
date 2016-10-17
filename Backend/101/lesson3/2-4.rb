require 'test/unit'
require 'test/unit/ui/console/testrunner'

class MyTest < Test::Unit::TestCase
  def test_output1
    numbers = [1, 2, 3, 4, 5]
    numbers.delete_at(1)

    assert(numbers, '[1, 3, 4, 5]')
  end

  def test_output2
    numbers = [1, 2, 3, 4, 5]
    numbers.delete(1)

    assert(numbers, '[2, 3, 4, 5]')
  end
end

Test::Unit::UI::Console::TestRunner.run(MyTest)