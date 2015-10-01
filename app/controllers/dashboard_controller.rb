class DashboardController < ApplicationController

  def index
    @total = Transaction.total
    @total_transactions = Transaction.total_transactions
    @big_expense = Transaction.big_expense
  end

  def show

  end
end
