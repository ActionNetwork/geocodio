module Geocodio
  class StateLegislativeDistrict
    attr_accessor :name
    attr_accessor :district_number

    def initialize(payload = {})
      @name            = payload['name']
      @district_number = payload['district_number'] || 0
    end
  end
end
