require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sample_text.txt', 'r')
    @text_obj = Text.new(@file.read)
  end

  def test_swap
    a_positions = @text_obj.search_letter('a')
    @text_obj.swap('a', 'e')
    e_positions = @text_obj.search_letter('e')
    a_positions.each {|a| assert(true, e_positions.include?(a))}
  end

  def test_word_count
    assert_equal 72, @text_obj.word_count
  end

  def teardown
    @file.close
  end
end