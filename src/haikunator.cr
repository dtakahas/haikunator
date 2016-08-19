require "./haikunator/*"

module Haikunator
  def self.haikunate(range=4096, delimiter = "-", opts = Hash(Symbol, Array(String)).new)
    Base.new.build(range, delimiter, opts)
  end
end
