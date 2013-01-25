require 'rubygems'
require 'accessibility/extras'

# We want to launch the test app and make sure it responds to
# accessibility queries, but that is difficult to know at what
# point it will start to respond, so we just sleep
APP_BUNDLE_PATH       = File.expand_path '../fixture/Release/AXElementsTester.app', __FILE__
APP_BUNDLE_IDENTIFIER = 'com.marketcircle.AXElementsTester'

`open #{APP_BUNDLE_PATH}`
sleep 3

at_exit do
  `killall AXElementsTester`
end

def pid_for name
  require 'accessibility/extras'
  NSWorkspace.sharedWorkspace.runningApplications.find do |app|
    app.bundleIdentifier == name
  end.processIdentifier
end

require 'accessibility/core'
APP_PID = pid_for APP_BUNDLE_IDENTIFIER
REF = Accessibility::Element.application_for APP_PID

