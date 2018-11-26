require ('rspec')
require ('parcels.rb')

describe ("parcels") do
  it ("allow you to create a new shipment") do
    expect(box = Parcel.new(1,2,3,10))
    expect(box.volume).to eq(6)
  end

  it ("cost_to_ship calculates the cost of the shipment based on the volume, weight, and shipment type") do
    expect(box = Parcel.new(1,2,3,10))
    expect(box.cost_to_ship("regular")).to eq(63)
  end

end
