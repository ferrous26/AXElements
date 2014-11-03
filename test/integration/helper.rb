require 'test/fixture_app'
require 'test/helper'
require 'ax_elements'

# Force this to be on for testing
Accessibility.debug = true


class Minitest::Test

  def app
    @@app ||= AX::Application.new APP_PID
  end

end
