module Faker
  module Okinawa
    class School < Base_

      class << self
        def name
          dic("school").entries.sample.word
        end
      end
    end
  end
end
