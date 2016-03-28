class DashboardController < ApplicationController

  def index
    @total = Transaction.total
    @total_transactions = Transaction.total_transactions
    @big_expense = Transaction.big_expense
    @expensive_receiver = Transaction.expensive_receiver
  end

  
end
