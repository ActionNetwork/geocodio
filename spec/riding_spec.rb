require 'spec_helper'

describe Geocodio::Riding do
  let(:geocodio) { Geocodio::Client.new }

  subject(:resp) do
    VCR.use_cassette('geocode_canadian_fields') do
      geocodio.geocode(['154 Calaveras Ave, Nepean, ON K2J, Canada'], fields: %w[riding provriding]).best
    end
  end

  it 'has a canadian riding ocd id' do
    expect(resp.riding.ocdid).to eq('ocd-division/country:ca/ed:35064-2013')
  end

  it 'has a canadian riding english name' do
    expect(resp.riding.name).to eq('Nepean')
  end

  it 'has a canadian riding source' do
    expect(resp.riding.source).to eq('Statistics Canada')
  end
end