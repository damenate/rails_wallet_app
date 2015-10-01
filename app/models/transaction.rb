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




  
end
