class Transaction < ActiveRecord::Base
  def self.total
    spent = withdrawals.reduce(0) {|sum, withdrawal| sum + withdrawal.amount}
    income = deposits.reduce(0) {|sum, deposit| sum + deposit.amount}
    income - spent
  end

  def self.total_transactions
    self.count
  end

  def self.withdrawals
    self.all.select {|t| t.transaction_type == "Withdrawal"}
  end

  def self.deposits
    self.all.select {|t| t.transaction_type == "Deposit"}
  end

  def self.big_expense
    withdrawals.map{|t| t.amount}.sort.last

    #withdrawal.order('amount DESC').first
    # expenses = []
    # expenses << withdrawals
    # expenses.max
  end

  def self.expensive_receiver
    # withdrawals = self.all.select {|e| e.withdrawals}
    # receiver = Hash.new(0)
    # withdrawals.each do |d|
    #   receiver[d.receiver] += d.amount
    # end

    self.where(transaction_type: "Withdrawal").group("receiver").order("sum(amount)").last.receiver

    # SELECT receiver
    # FROM transactions
    # WHERE transaction_type = "Withdrawal"
    # GROUP BY receiver
    # ORDER BY sum(amount) DESC
    # LIMIT 1

  end



end
