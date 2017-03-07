require 'statement'

describe Statement do

  describe '#credit' do

      it 'adds the date, type, a space, and then updated balance to Summary array' do
        account = Account.new
        stat = Statement.new
        account.credit(500, '10/01/2017')
        expect(account.statement.summary).to eq [['10/01/2017' , 'credit' , 500 ,500]]
      end
    end

  describe '#debit' do

      it 'adds the date, type, a space, and then updated balance to Summary array' do
        account = Account.new
        stat = Statement.new
        account.debit(500, '10/01/2017')
        expect(account.statement.summary).to eq [['10/01/2017' , 'debit' , 500 , -500]]
      end
    end

  describe '#summary' do

      it 'returns an account summary, including transaction type, amount, date, and altered balance' do
        account = Account.new
        account.credit(500, '10/1/2017')
        account.debit(200, '11/1/2017')
        expect(account.statement.show).to include(["10/1/2017", "credit", 500, 500], ["11/1/2017", "debit", 200, 300])
      end
    end

end
