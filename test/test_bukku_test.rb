require 'test_helper'

class TestBukkuTest < Minitest::Test
  def setup
    @bukku_test = BukkuTest.new(domain: 'test', token: 'abc123')
  end

  def test_base_uri
    assert_equal 'https://api.bukku.fyi', BukkuTest::BASE_URI
  end

  def test_inherits_from_client
    assert_kind_of Client, @bukku_test
  end

  ## SALES TESTS
  def test_get_sales_quotes
    stub_request(:get, "https://api.bukku.fyi/sales/quotes?date_from=2025-01-01").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_sales_quotes(date_from: '2025-01-01')
  end

  def test_get_sales_quote
    stub_request(:get, "https://api.bukku.fyi/sales/quotes/123").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_sales_quote(123)
  end

  def test_get_sales_orders
    stub_request(:get, "https://api.bukku.fyi/sales/orders?status=pending").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_sales_orders(status: 'pending')
  end

  def test_get_sales_order
    stub_request(:get, "https://api.bukku.fyi/sales/orders/456").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_sales_order(456)
  end

  def test_get_delivery_orders
    stub_request(:get, "https://api.bukku.fyi/sales/delivery_orders").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_delivery_orders
  end

  def test_get_delivery_order
    stub_request(:get, "https://api.bukku.fyi/sales/delivery_orders/789").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_delivery_order(789)
  end

  def test_get_invoices
    stub_request(:get, "https://api.bukku.fyi/sales/invoices?date_from=2025-01-01&date_to=2025-01-31").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_invoices(date_from: '2025-01-01', date_to: '2025-01-31')
  end

  def test_get_invoice
    stub_request(:get, "https://api.bukku.fyi/sales/invoices/999").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_invoice(999)
  end

  def test_get_sales_credit_notes
    stub_request(:get, "https://api.bukku.fyi/sales/credit_notes").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_sales_credit_notes
  end

  def test_get_sales_credit_note
    stub_request(:get, "https://api.bukku.fyi/sales/credit_notes/111").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_sales_credit_note(111)
  end

  def test_get_sales_payments
    stub_request(:get, "https://api.bukku.fyi/sales/payments").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_sales_payments
  end

  def test_get_sales_payment
    stub_request(:get, "https://api.bukku.fyi/sales/payments/222").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_sales_payment(222)
  end

  def test_get_sales_refunds
    stub_request(:get, "https://api.bukku.fyi/sales/refunds").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_sales_refunds
  end

  def test_get_sales_refund
    stub_request(:get, "https://api.bukku.fyi/sales/refunds/333").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_sales_refund(333)
  end

  ## PURCHASE TESTS
  def test_get_purchase_orders
    stub_request(:get, "https://api.bukku.fyi/purchases/orders?status=approved").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_purchase_orders(status: 'approved')
  end

  def test_get_purchase_order
    stub_request(:get, "https://api.bukku.fyi/purchases/orders/444").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_purchase_order(444)
  end

  def test_get_received_notes
    stub_request(:get, "https://api.bukku.fyi/purchases/goods_received_notes").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_received_notes
  end

  def test_get_received_note
    stub_request(:get, "https://api.bukku.fyi/purchases/goods_received_notes/555").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_received_note(555)
  end

  def test_get_bills
    stub_request(:get, "https://api.bukku.fyi/purchases/bills").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_bills
  end

  def test_get_bill
    stub_request(:get, "https://api.bukku.fyi/purchases/bills/666").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_bill(666)
  end

  def test_get_purchases_credit_notes
    stub_request(:get, "https://api.bukku.fyi/purchases/credit_notes").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_purchases_credit_notes
  end

  def test_get_purchases_credit_note
    stub_request(:get, "https://api.bukku.fyi/purchases/credit_notes/777").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_purchases_credit_note(777)
  end

  def test_get_purchases_payments
    stub_request(:get, "https://api.bukku.fyi/purchases/payments").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_purchases_payments
  end

  def test_get_purchases_payment
    stub_request(:get, "https://api.bukku.fyi/purchases/payments/888").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_purchases_payment(888)
  end

  def test_get_purchases_refunds
    stub_request(:get, "https://api.bukku.fyi/purchases/refunds").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_purchases_refunds
  end

  def test_get_purchases_refund
    stub_request(:get, "https://api.bukku.fyi/purchases/refunds/991").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_purchases_refund(991)
  end

  ## BANKING TESTS
  def test_get_banking_incomes
    stub_request(:get, "https://api.bukku.fyi/banking/incomes?date_from=2025-01-01").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_banking_incomes(date_from: '2025-01-01')
  end

  def test_get_banking_income
    stub_request(:get, "https://api.bukku.fyi/banking/incomes/101").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_banking_income(101)
  end

  def test_get_banking_expenses
    stub_request(:get, "https://api.bukku.fyi/banking/expenses").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_banking_expenses
  end

  def test_get_banking_expense
    stub_request(:get, "https://api.bukku.fyi/banking/expenses/202").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_banking_expense(202)
  end

  def test_get_transfers
    stub_request(:get, "https://api.bukku.fyi/banking/transfers").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_transfers
  end

  def test_get_transfer
    stub_request(:get, "https://api.bukku.fyi/banking/transfers/303").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_transfer(303)
  end

  ## CONTACT TESTS
  def test_get_contacts
    stub_request(:get, "https://api.bukku.fyi/contacts?type=customer").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_contacts(type: 'customer')
  end

  def test_get_contact
    stub_request(:get, "https://api.bukku.fyi/contacts/404").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_contact(404)
  end

  def test_get_contact_groups
    stub_request(:get, "https://api.bukku.fyi/contacts/groups").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_contact_groups
  end

  def test_get_contact_group
    stub_request(:get, "https://api.bukku.fyi/contacts/groups/505").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_contact_group(505)
  end

  ## PRODUCT TESTS
  def test_get_products
    stub_request(:get, "https://api.bukku.fyi/products?category=electronics").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_products(category: 'electronics')
  end

  def test_get_product
    stub_request(:get, "https://api.bukku.fyi/products/606").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_product(606)
  end

  def test_get_product_groups
    stub_request(:get, "https://api.bukku.fyi/products/groups").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_product_groups
  end

  def test_get_product_group
    stub_request(:get, "https://api.bukku.fyi/products/groups/707").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.get_product_group(707)
  end

  ## ACCOUNTING TESTS
  def test_journal_entries
    stub_request(:get, "https://api.bukku.fyi/journal_entries?date_from=2025-01-01").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.journal_entries(date_from: '2025-01-01')
  end

  def test_journal_entry
    stub_request(:get, "https://api.bukku.fyi/journal_entries/808").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.journal_entry(808)
  end

  def test_accounts
    stub_request(:get, "https://api.bukku.fyi/accounts").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.accounts
  end

  def test_account
    stub_request(:get, "https://api.bukku.fyi/accounts/909").with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku_test.account(909)
  end
end
