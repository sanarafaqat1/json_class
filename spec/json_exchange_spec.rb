require 'date'
describe 'Testing the exchange rates' do

  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it 'should be a hash'do
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end
  it 'should contain the base as EUR' do
    expect(@exchange_rates.get_base).to eq 'EUR'
  end
  it 'should say true if date is a string ' do
    expect(@exchange_rates.get_date).to be true
  end
  it 'should contain the length of 31 in rates' do
    expect(@exchange_rates.get_length).to eq(31)
  end

end
