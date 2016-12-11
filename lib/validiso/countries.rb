require 'json'

module Validiso
  class Countries
    class << self
      def find_code(val)
        new.find(type: 'code', value: val)
      end
      def find_alpha2(val)
        new.find(type: 'alpha2', value: val)
      end
      def find_alpha3(val)
        new.find(type: 'alpha3', value: val)
      end
    end

    def find(type:, value:)
      value = value.to_s
      case type.to_s
      when 'code'
        Validiso::Data.codes[value]
      when 'alpha2'
        Validiso::Data.alpha2[value]
      when 'alpha3'
        Validiso::Data.alpha3[value]
      end

    end
  end

end