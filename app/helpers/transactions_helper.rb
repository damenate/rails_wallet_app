module TransactionsHelper
  def make_money(number)
    "#{number < 0 ? '-' : ''}""$#{number}"
  end
end
