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
    withdrawals.map{|t| t.receiver}.sort.last
#     FROM time_entries AS t
# INNER JOIN projects AS p ON t.project_id = p.id
# INNER JOIN clients AS c ON p.client_id = c.id
# INNER JOIN developers AS d ON t.developer_id = d.id
# WHERE developer_id = 28
# GROUP BY p.client_id
# ORDER BY total_hours DESC LIMIT 1;
  end
end
