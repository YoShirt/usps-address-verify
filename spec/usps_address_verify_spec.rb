require 'spec_helper'

describe USPSAddressVeriify do

  before(:each) do
    @address = {
      address1: '2301 E 7th St',
      address2: 'Ste E200',
      city: 'Los Angeles',
      state: 'CA'
    }
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
