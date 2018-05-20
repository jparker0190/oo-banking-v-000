class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end

  def valid?
    sender.balance > @amount if @sender.valid? && @receiver.valid?
  end
  def execute_transaction
    if valid? && @status == 'pending'
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = 'complete'
    else
      @status = 'rejected'
      'Transaction rejected. Please check your account balance.'
  end
end
