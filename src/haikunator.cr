require "./haikunator/*"

module Haikunator
  def self.haikunate(range=4096, delimiter = "-", adjectives = nil, nouns = nil)
    Base.new.build(range, delimiter, adjectives, nouns)
  end
end
