require 'station'

describe Station do
  subject(:station) { described_class.new(name: 'Bank', zone: 'Zone 1') }

  it 'stores the station when initialized' do
    expect(station.name).to eq 'Bank'
  end

  it 'stores the station when initialized' do
    expect(station.zone).to eq 'Zone 1'
  end
end
