require_relative '../lib/concerns/memorable.rb'

module Memorable
    module ClassMethods
        def reset_all
            self.all.clear
        end

        def count
            self.all.count
        end
    end

    def InstanceMethods
        def initialize
            self.class.all << self
        end
    end
end