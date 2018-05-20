class BankAccount
  attr_accessor :name
  def initialize(owner_name)
    @name = owner_name
    @balance = 1000
    @status = 'open'
  end
  def deposit(amount)
    @balance += amount
  end
  def display_balance
    "Your balance 9s $#{@balance}."
  end
  def valid?
    @status == 'open' && @balance > 0
  end
  def close_account
    @status - 'closed'
  end
end
