require 'test/unit'
require 'test/unit/ui/console/testrunner'

class MyTest < Test::Unit::TestCase
  def add_eight(number)
    number + 8
  end

  def test_output
    number = 2

    how_deep = "number"
    5.times { how_deep.gsub!("number", "add_eight(number)") }

    assert_equal(eval(how_deep), 42)
  end
end

Test::Unit::UI::Console::TestRunner.run(MyTest)