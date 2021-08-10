module Faker
  module Okinawa
    module Config

      class << self
        attr_accessor :load_path

        def dic_path(name)
          @load_path.select{ |path| name == ::File.basename(path, '.dic') }.first
        end
      end
    end
  end
end
