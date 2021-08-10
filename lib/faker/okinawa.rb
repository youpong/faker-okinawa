mydir = __dir__

require "faker/okinawa/version"
require "faker/okinawa/config"
require "faker/okinawa/odic"

module Faker
  module Okinawa

    class Base_
      @@dics = {}

      def self.dic(name)
        @@dics[name]
      end

      def self.load
        Config.load_path.each do |path|
          base = ::File.basename(path, '.dic')
          @@dics[base] = Odic.new(path)
        end
      end

    end

  end
end

dic_dir = File.expand_path('../../o-dic', mydir)
Faker::Okinawa::Config.load_path = Dir[File.join(dic_dir, '**/*.dic')]
Faker::Okinawa::Base_.load

%w[address awamori base fish food name school].each { |dic| require "faker/okinawa/" + dic }
