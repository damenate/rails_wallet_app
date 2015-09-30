class Transaction < ActiveRecord::Base
  def self.total
    spent = withdrawal.reduce
    income = deposit.reduce
    income - spent
  end

  def self.withdrawal
    self.all.select {|t| t.transaction_type == "withdrawal"}
  end

  def self.deposit
    self.all.select {|t| t.transaction_type == "withdrawal"}
  end
end
