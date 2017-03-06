class Account
  attr_accessor :balance, :summary

  def initialize
    @balance = 0
    @summary = []
  end

  def credit(amt, date)
    @balance = @balance + amt
    transaction = [date, 'credit', 'x', @balance]
    @summary.push transaction
  end

  def debit(amt, date)
    @balance = @balance - amt
    transaction = [date, 'x', 'debit', @balance]
    @summary.push transaction
  end

end
