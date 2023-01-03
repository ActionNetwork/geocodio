module Geocodio
  class StateLegislativeDistrict
    attr_accessor :name
    attr_accessor :district_number
    attr_accessor :ocd_id

    def initialize(payload = {})
      payload = {} if payload.nil?
      @name            = payload['name']
      @district_number = payload['district_number'] || 0
      @ocd_id  = payload['ocd_id']
    end
  end
end
