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

  # def show_statement
  #   puts 'Date || Transaction || Amount || Balance'
  #   print @summary[0][0].to_s + '||' + @summary[0][1].to_s + '||' + @summary[0][2].to_s + '||' + @summary[0][3].to_s + '||' + "\n"
  #   print @summary[1][0].to_s + '||' + @summary[1][1].to_s + '||' + @summary[1][2].to_s + '||' + @summary[1][3].to_s + '||' + "\n"
  #   print @summary[2][0].to_s + '||' + @summary[2][1].to_s + '||' + @summary[2][2].to_s + '||' + @summary[2][3].to_s + '||' + "\n"
  #   print @summary[3][0].to_s + '||' + @summary[3][1].to_s + '||' + @summary[3][2].to_s + '||' + @summary[3][3].to_s + '||' + "\n"
  # end

  def show_statement
    puts 'Date || Transaction || Amount || Balance ||'
    @summary.each do |line|
      line.each do |x|
        print x.to_s + "||"
      end
        print "\n"
    end
  end

end
