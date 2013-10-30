require 'uri'
require 'hashize/version'

# Dummy namespace
module Hashize::URI; end

# Refinements method of URI::Generic
# @see URI::Generic
module Hashize::URI::Generic
  refine URI::Generic do
    def keys
      self.component
    end

    def values
      self.component_ary
    end

    def to_hash
      Hash[self.component.zip(self.component_ary)]
    end

    def to_h; to_hash; end
  end
end
