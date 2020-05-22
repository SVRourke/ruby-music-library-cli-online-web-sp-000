require 'bundler'
Bundler.require

module Concerns
  module Findable

    def find_by_name(name)
      self.all.find {|item| item.name == name}
    end

    def find_or_create_by_name(name)
      if find_by_name(name) == nil
        self.new(name)
      else
        find_by_name(name)
      end
    end


      # def self.find_or_create_by_name(name)
      #   if find_by_name(name) == nil
      #     Song.create(name)
      #   else
      #     find_by_name(name)
      #   end
      # end

  end
end

require_all 'lib'
