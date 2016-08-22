class Oystercard

attr_reader :balance

  def initialize
    @balance = 0
  end

  #consider using attr_accessor for the balance below so we don't call @balance directly.
  def top_up(value)
    fail "Max top up value exceeded" if value >= 100
    @balance += value
  end

  def deduct(value)
    @balance -= value
  end

end
