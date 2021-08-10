module Faker
  module Okinawa
    class Fish < Base_

      class << self
        def name
          dic("name").entries.sample.word
        end
      end
    end
  end
end
