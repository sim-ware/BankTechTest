class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def credit(amt)
    @balance = @balance + amt
  end

  def debit(amt)
    @balance = @balance - amt
  end

end
