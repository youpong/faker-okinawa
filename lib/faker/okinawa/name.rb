module Faker
  module Okinawa
    class Name < Base_

      class << self
        def last_name
          dic("name").entries.sample.word
        end
      end
    end
  end
end
