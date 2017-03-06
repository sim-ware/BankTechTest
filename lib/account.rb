class Account
  attr_accessor :balance, :summary

  def initialize
    @balance = 0
    @summary = []
  end

  def credit(amt, date)
    @balance = @balance + amt
    transaction = [date, 'credit', amt, @balance]
    @summary.push transaction
  end

  def debit(amt, date)
    @balance = @balance - amt
    transaction = [date, 'debit', amt, @balance]
    @summary.push transaction
  end

end
