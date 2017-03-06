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

  def show_statement
    puts 'Date      ||Deb/Cr||Amt||Bal||'
    @summary.each do |line|
      line.each do |x|
        print x.to_s + "||"
      end
        print "\n"
    end
  end

end
