class Parcel
  attr_reader (:volume)

  def initialize(l,w,h,weight)
    @l = l
    @w = w
    @h = h
    @weight = weight
    @volume =  @l*@w*@h
  end

  def cost_to_ship(speed)

    shipment_methods = {
      "regular" => 1,
      "express" => 2,
      "over_night" => 3
    }

    computation = shipment_methods.fetch(speed)
    base_price = 2+computation

    @volume * @weight + base_price

  end



end
