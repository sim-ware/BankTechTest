require_relative 'statement'

class Account
  attr_accessor :balance, :statement

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def credit(amt, date)
    @balance = @balance + amt
    transaction = [date, 'credit', amt, @balance]
    @statement.summary << transaction
  end

  def debit(amt, date)
    @balance = @balance - amt
    transaction = [date, 'debit ', amt, @balance]
    @statement.summary << transaction
  end

end
