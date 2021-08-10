module Faker
  module Okinawa

    class Address < Base_

      class << self

        def city
          dic("city").entries.sample.word
        end

        def district
          dic("address").entries.sample.word
        end

        def island
          dic("island").entries.sample.word
        end

        def park
          dic("park").entries.sample.word
        end
      end
    end
  end
end
