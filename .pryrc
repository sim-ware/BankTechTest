require './lib/account'
require './lib/statement'
x = Account.new
x.credit(500, '10/12/2017')
x.credit(600, '11/12/2017')
x.debit(200, '12/12/2017')
x.debit(200, '13/12/2017')
x.credit(600, '14/12/2017')
x.statement.summary
x.statement.show
