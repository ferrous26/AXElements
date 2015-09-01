# 7.0.1

  * Workaround issue using `DSL#wait_for` with apps that become unresponsive when busy

# 7.0.0

  * Compatibility with Yosemite (OS X 10.10)
  * Add DSL#screenshot and AX::Element#screenshot for taking screenshots
  * Remove MacRuby support
  * Allow other Array#method\_missing handlers to function (GH-9)
  * Update ActiveSupport dependency and
    - ActiveSupport 4.2.x is now required and all core extensions are loaded

# 6.0.0

  * Compatability with Sea Lion (OS X 10.9)
    - You can no longer send simulated input directly to an object,
      we now approximate the old behaviour by trying to set focus
      to the element before simulating system wide input

# 0.9.0

  * AXElements can now run on MRI as well as MacRuby

  * Added `DSL#pinch` to simulate pinch gestures
  * Added `DSL#rotate` to simulate rotation gestures
  * Added `DSL#swipe` to simulate swipe gestures
  * Added `DSL#smart_magnify` to simulate smart magnification (two finger double tap)
  * Added `DSL#horizontal_scroll`
  * Added `DSL#contextual_menu` hack for finding contextual menus (WIP)
  * Added `NSScreen.wakeup` to the `NSScreen` class to wake up sleeping displays
  * Added `Accessibility::SystemInfo` for getting information about the running system
    - Added a `Battery` module for querying information about the battery status
  * Added `DSL#record` to run a screen recording of the given block (actual video!)
  * Added `Application.frontmost_application`
  * Added `Application.menu_bar_owner`
  * Added `Application.finder`
  * Added `Application.dock`
  * Added `SystemWide.focused_application` as override of built in attribute
  * Added `SystemWide.status_items`
  * Added `SystemWide.desktop`
  * Added History.markdown to track notable changes
  * Added CONTRIBUTING.markdown with much less stringent guidelines

  * Moved MiniTest extensions to their own gem/repository [minitest-ax\_elements](https://github.com/AXElements/minitest-ax_elements)
  * Moved RSpec extensions to their own gem/repository [rspec-ax\_elements](https://github.com/AXElements/rspec-ax_elements)

  * Ported `mouse.rb` to C and moved code to [mouse](https://github.com/AXElements/mouse)
  * Ported `core.rb` to C and moved code to [accessibility\_core](https://github.com/AXElements/accessibility_core)
  * Ported `screen_recorder.rb` to C and moved code to [screen\_recorder](https://github.com/AXElements/screen_recorder)

  * Changed `DSL#right_click` to accept a block; block is yielded to between click down and click up events
  * Changed `AX::Element#rect` to `AX::Element#to_rect`

  * Deprecate `AX::DOCK` constant, use `AX::Application.dock` instead
  * Remove `Accessibility.application_with_bundle_identifier`; use `AX::Application.new` instead
  * Remove `Accessibility.application_with_name; use `AX::Application.new` instead
  * Remove `DSL#subtree_for`; use `Element#inspect_subtree` instead

  * Fixed fetching parameterized attributes through `Element#method_missing`
  * Fixed `Element#parameterized_attribute` automatically normalizing `Range` parameters
