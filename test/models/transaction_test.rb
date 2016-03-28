require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  test "current month transactuon count" do
    assert_equal 2, Transaction.count_this_month
    Transaction.create!(receiver: "Mason", amount: )
    assert_equal 2, Transaction.count_this_month
  end
end
