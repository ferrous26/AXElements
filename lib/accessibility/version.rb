# -*- coding: utf-8 -*-

##
# The main AXElements namespace.
module Accessibility
  # @return [String]
  VERSION = '7.0.1'

  # @return [String]
  CODE_NAME = 'ニンフィア'

  ##
  # The complete version string for AXElements
  #
  # This differs from {Accessibility::VERSION} in that it also
  # includes {CODE_NAME} information.
  #
  # @return [String]
  def self.version
    "#{VERSION}-#{CODE_NAME}"
  end
end
