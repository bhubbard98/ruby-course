class TaxiMeter
  # TODO

  attr_accessor :amount_due, :miles_driven, :start_time, :stop_time, :airport

  # counter = 0

  def initialize(airport: false)
    @amount_due = 0
    @miles_driven = 0
    @airport = airport

  end

  def one_sixth
    1.0 / 6.0
  end

  def start
    @start_time = Time.now
    if (airport == true)
      @amount_due = 13.10
    else
      @amount_due = 2.50
    end
  end

  def stop
    @stop_time = Time.now
  end

  def miles_driven
    @miles_driven
  end

  def amount_due

    if @miles_driven < one_sixth
      @amount_due = 250
    elsif @miles_driven % 1 == 0
      @miles_driven = @miles_driven - one_sixth
      @amount_due = (250.0 + (@miles_driven * 240)).to_i
    elsif
      @miles_driven = (@miles_driven *6 ) -  one_sixth
      @amount_due = (250.0 + (@miles_driven * 40)).to_i

    end


  end
end

