require 'json'

module Validiso
  class Data
    class << self
      def json
        @@json ||= JSON.parse(read_data_file)
      end
      
      def read_data_file
        file_path = File.expand_path('../data/countries.json', __FILE__)
        File.read(file_path)
      end

      def codes
        @@codes||= bucket_collector('country_code')
      end

      def alpha2
        @@alpha2||= bucket_collector('alpha2')
      end

      def alpha3
        @@alpha3||= bucket_collector('alpha3')
      end

      def bucket_collector(key)
        bucket = {}
        json.each do |obj|
          bucket[obj[key]] = obj
        end
        bucket
      end
    end
  end
end