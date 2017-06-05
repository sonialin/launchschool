require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    cash_register = CashRegister.new(0)
    transaction = Transaction.new(30)
    transaction.amount_paid = 30
    cash_register.accept_money(transaction)
    assert_equal 30, cash_register.total_money
  end

  def test_change
    cash_register = CashRegister.new(0)
    transaction = Transaction.new(30)
    transaction.amount_paid = 50
    assert_equal 20, cash_register.change(transaction)
  end

  def test_give_receipt
    cash_register = CashRegister.new(0)
    transaction = Transaction.new(30)
    assert_output "You've paid $30.\n" do
      cash_register.give_receipt(transaction)
    end
  end

  def test_prompt_for_payment
    transaction = Transaction.new(30)
    user_input = StringIO.new("30\n")
    output = StringIO.new
    transaction.prompt_for_payment(input: user_input, output: output)
    assert_equal 30, transaction.amount_paid
  end
end