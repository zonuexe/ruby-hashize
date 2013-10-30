require 'hashize/version'

# Refinements method of Struct
module Hashize::Struct
  refine Struct do
    def keys
      self.members
    end

    def to_hash
      Hash[self.class.members.zip(self.to_a)]
    end

    def to_h; to_hash; end
  end
end
