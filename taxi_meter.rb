class TaxiMeter
  # TODO
  attr_accessor :meter, :amount_due, :miles_driven, :start_time, :stop_time

  counter = 0

  def initialize
    @meter = meter
    @amount_due = 0
    @miles_driven = 0

  end

  def start
    @start_time = Time.now
  end

  def stop
    @stop_time = Time.now
  end

end


