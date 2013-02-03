require 'accessibility/version'

module Accessibility

  class << self
    ##
    # Whether or not to turn on DEBUG features in AXElements. The
    # value is initially inherited from `$DEBUG` but can be overridden
    # by an environment variable named `AXDEBUG` or changed dynamically
    # at runtime.
    #
    # @return [Boolean]
    attr_accessor :debug
    alias_method :debug?, :debug
  end

  # Initialize the DEBUG value
  @debug = ENV.fetch 'AXDEBUG', $DEBUG

end
