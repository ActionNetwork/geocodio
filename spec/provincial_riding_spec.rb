require 'spec_helper'

describe Geocodio::ProvincialRiding do
  let(:geocodio) { Geocodio::Client.new }

  subject(:resp) do
    VCR.use_cassette('geocode_canadian_fields') do
      geocodio.geocode(['154 Calaveras Ave, Nepean, ON K2J, Canada'], fields: %w[riding provriding]).best
    end
  end

  it 'has a canadian provincial riding ocd id' do
    expect(resp.prov_riding.ocdid).to eq('ocd-division/country:ca/province:on/ed:66-2015')
  end

  it 'has a canadian provincial riding english name' do
    expect(resp.prov_riding.name).to eq('Nepean')
  end

  it 'has a canadian provincial riding source' do
    expect(resp.prov_riding.source).to eq('Elections Ontario')
  end
end