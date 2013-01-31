unless on_macruby?

  # @return [String]
  KAXChildrenAttribute         = 'AXChildren'
  # @return [String]
  KAXRoleAttribute             = 'AXRole'
  # @return [String]
  KAXSubroleAttribute          = 'AXSubrole'
  # @return [String]
  KAXIdentifierAttribute       = 'AXIdentifier'
  # @return [String]
  KAXWindowCreatedNotification = 'AXWindowCreated'
  # @return [String]
  KAXMainWindowAttribute       = 'AXMainWindow'
  # @return [String]
  KAXFocusedAttribute          = 'AXFocused'
  # @return [String]
  KAXValueChangedNotification  = 'AXValueChanged'
  # @return [String]
  KAXTitleAttribute            = 'AXTitle'
  # @return [String]
  KAXURLAttribute              = 'AXURL'
  # @return [String]
  KAXTitleUIElementAttribute   = 'AXTitleUIElement'
  # @return [String]
  KAXPlaceholderValueAttribute = 'AXPlaceholderValue'
  # @return [String]
  KAXWindowRole                = 'AXWindow'
  # @return [String]
  KAXCloseButtonSubrole        = 'AXCloseButton'
  # @return [String]
  KAXTrashDockItemSubrole      = 'AXTrashDockItem'
  # @return [String]
  KAXPosition                  = 'AXPosition'
  # @return [String]
  KAXSize                      = 'AXSize'
  # @return [String]
  KAXRTFForRangeParameterizedAttribute    = 'AXRTFForRange'
  # @return [String]
  KAXIsApplicationRunningAttribute        = 'AXIsApplicationRunning'
  # @return [String]
  KAXStringForRangeParameterizedAttribute = 'AXStringForRange'

  unless defined? NSString
    # Alias for the `String` class, compatible with MacRuby
    # @return [Class]
    NSString = String
  end

  unless defined? NSDictionary
    # Alias for the `Hash` class, compatible with MacRuby
    # @return [Class]
    NSDictionary = Hash
  end

  unless defined? NSArray
    # Alias for the `Array` class, compatible with MacRuby
    # @return [Class]
    NSArray = Array
  end

  unless defined? NSDate
    # Alias for the `Time` class, compatible with MacRuby
    # @return [Class]
    NSDate = Time
  end

  ##
  # AXElements extensions to the Symbol class
  class Symbol

    ##
    # Equivalent to `String#chomp`, coerces receiver to string first
    #
    # @return [String]
    def chomp suffix
      to_s.chomp suffix
    end

  end

end

unless defined? KAXIdentifierAttribute
  ##
  # Added for backwards compatability with Snow Leopard.
  # This attribute is standard with Lion and newer. AXElements depends
  # on it being defined.
  #
  # @return [String]
  KAXIdentifierAttribute = 'AXIdentifier'
end
