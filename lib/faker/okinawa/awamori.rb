module Faker
  module Okinawa
    class Awamori < Base_
      class << self
        def name
          dic("awamori").entries.sample.word
        end
      end
    end
  end
end
