require 'test/helper'
require 'accessibility/version'

class TestAccessibilityVersion < MiniTest::Unit::TestCase

  def test_version_is_ascii_only # RubyGems :(
    assert_equal Accessibility::VERSION.encode(Encoding::ASCII), Accessibility::VERSION
  end

  def test_version_method
    assert_match Accessibility::VERSION, Accessibility.version
    assert_match Accessibility::CODE_NAME, Accessibility.version
  end

end
