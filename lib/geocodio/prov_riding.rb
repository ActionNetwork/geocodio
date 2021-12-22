module Geocodio
  class ProvincialRiding
    attr_reader :ocdid
    attr_reader :name
    attr_reader :source

    def initialize(payload = {})
      @ocdid  = payload['ocd_id']
      @name   = payload['name_english']
      @source = payload['source']
    end
  end
end