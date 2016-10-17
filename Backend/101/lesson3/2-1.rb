require 'test/unit'
require 'test/unit/ui/console/testrunner'

class MyTest < Test::Unit::TestCase
  def test_output
    numbers = [1, 2, 2, 3]
    numbers.uniq

    assert(numbers, '[1, 2, 2, 3]')
  end
end

Test::Unit::UI::Console::TestRunner.run(MyTest)