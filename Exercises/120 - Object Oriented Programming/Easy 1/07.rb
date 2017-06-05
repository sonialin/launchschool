class Flight
  attr_accessor :handle

  def initialize(flight_number)
    @handle = Database.init
    @flight_number = flight_number
  end
end