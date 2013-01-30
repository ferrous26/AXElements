unless on_macruby?

  KAXChildrenAttribute         = 'AXChildren'
  KAXRoleAttribute             = 'AXRole'
  KAXSubroleAttribute          = 'AXSubrole'
  KAXIdentifierAttribute       = 'AXIdentifier'
  KAXWindowCreatedNotification = 'AXWindowCreated'
  KAXMainWindowAttribute       = 'AXMainWindow'
  KAXFocusedAttribute          = 'AXFocused'
  KAXValueChangedNotification  = 'AXValueChanged'
  KAXTitleAttribute            = 'AXTitle'
  KAXURLAttribute              = 'AXURL'
  KAXTitleUIElementAttribute   = 'AXTitleUIElement'
  KAXPlaceholderValueAttribute = 'AXPlaceholderValue'
  KAXWindowRole                = 'AXWindow'
  KAXCloseButtonSubrole        = 'AXCloseButton'
  KAXTrashDockItemSubrole      = 'AXTrashDockItem'
  KAXRTFForRangeParameterizedAttribute    = 'AXRTFForRange'
  KAXIsApplicationRunningAttribute        = 'AXIsApplicationRunning'
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

