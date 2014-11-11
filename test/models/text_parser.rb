require "test_helper"

class TextParserTest < ActiveSupport::TestCase
  test "counts spaces and chars" do
    assert_equal 2, TextParser.counts("this is it")[:spaces]
    assert_equal 10, TextParser.counts("this is it")[:chars]
    assert_equal 3, TextParser.counts("42 is the answer")[:spaces]
    assert_equal 0, TextParser.counts("42")[:spaces]
  end
  test "count zeros for empty string" do
    assert_equal 0, TextParser.counts("")[:spaces]
    assert_equal 0, TextParser.counts("")[:chars]
    assert_equal 0, TextParser.counts(nil)[:spaces]
    assert_equal 0, TextParser.counts(nil)[:chars]
  end
end
