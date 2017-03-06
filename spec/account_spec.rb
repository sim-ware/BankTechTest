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

end
