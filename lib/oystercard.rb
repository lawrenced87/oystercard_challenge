class Oystercard

attr_reader :balance, :entry_station
MIN_FARE = 1
MAX_CARD_LIMIT = 90

  def initialize(balance=0)
    @balance = balance
    @entry_station
  end

  #consider using attr_accessor for the balance below so we don't call @balance directly.
  def top_up(value)
    fail "Balance after top up cannot exceed £#{MAX_CARD_LIMIT}" if (@balance + value) > MAX_CARD_LIMIT
    @balance += value
  end

  def in_journey?
    !!@entry_station
  end

  def touch_in(entry_station)
    fail "Insufficient funds" if balance < MIN_FARE
    @entry_station = entry_station
    @in_journey = true
    #self
  end

  def touch_out
    @in_journey = false
    deduct(MIN_FARE)
    @entry_station = nil
  end

private

  def deduct(value)
    @balance -= value
  end

end
