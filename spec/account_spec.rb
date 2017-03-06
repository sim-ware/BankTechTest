require 'account'

describe Account do

  it 'creates an account with a default empty balance' do
    account = Account.new
    expect(account.balance).to eq 0
  end

  describe '#credit' do

    it 'adds the amount stated as param to the balance' do
      account = Account.new
      expect(account.credit(500)).to eq 500
    end
  end

  describe '#debit' do

    it 'deducts the amount stated as param from the balance' do
      account = Account.new
      account.credit(500)
      expect(account.debit(250)).to eq 250
    end
  end

end
