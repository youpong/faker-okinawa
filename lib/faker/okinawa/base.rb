module Faker
  module Okinawa
    class Base < Base_

      class << self
        def name
          dic("base").entries.sample.word
        end
      end
    end
  end
end
