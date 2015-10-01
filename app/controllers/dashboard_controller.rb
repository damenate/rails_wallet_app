class DashboardController < ApplicationController

  def index
    @total = Transaction.total
    @total_transactions = Transaction.total_transactions
  end

  def show

  end
end
