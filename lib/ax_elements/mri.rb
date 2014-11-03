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

unless defined? KAXIdentifierAttribute
  ##
  # Added for backwards compatability with Snow Leopard.
  # This attribute is standard with Lion and newer. AXElements depends
  # on it being defined.
  #
  # @return [String]
  KAXIdentifierAttribute = 'AXIdentifier'
end
