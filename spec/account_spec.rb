require 'account'

describe Account do

  it 'creates an account with a default empty balance' do
    account = Account.new
    expect(account.balance).to eq 0
  end

  describe '#credit' do

    it 'adds the amount stated as param to the balance' do
      account = Account.new
      account.credit(500, '10/01/2017')
      expect(account.balance).to eq 500
    end

    it 'adds the date, type, a space, and then updated balance to Summary array' do
      account = Account.new
      account.credit(500, '10/01/2017')
      expect(account.summary).to eq [['10/01/2017' , 'credit' , 500 ,500]]
    end
  end

  describe '#debit' do

    it 'deducts the amount stated as param from the balance' do
      account = Account.new
      account.debit(250, '10/01/2017')
      expect(account.balance).to eq -250
    end

    it 'adds the date, type, a space, and then updated balance to Summary array' do
      account = Account.new
      account.debit(500, '10/01/2017')
      expect(account.summary).to eq [['10/01/2017' , 'debit' , 500 , -500]]
    end
  end

  describe '#summary' do

    it 'returns an account summary, including transaction type, amount, date, and altered balance' do
  end

end
