require 'bundler'
Bundler.require

module Concerns
  module Findable
    def self.find_by_name(name)
      all.find {|item| item.name == name}
    end
  end
end

require_all 'lib'
