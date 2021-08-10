module Faker
  module Okinawa
    class Food < Base_

      class << self
        def name
          dic("food").entries.sample.word
        end
      end
    end
  end
end
