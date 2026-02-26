require 'test_helper'

class TestBukku < Minitest::Test
  def setup
    @bukku = Bukku.new(domain: 'test', token: 'abc123')
  end

  def test_base_uri
    assert_equal 'https://api.bukku.my', Bukku::BASE_URI
  end

  def test_inherits_from_client
    assert_kind_of Client, @bukku
  end

  ## SALES TESTS
  def test_get_sales_quotes
    stub_request(:get, 'https://api.bukku.my/sales/quotes?date_from=2025-01-01').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_sales_quotes(date_from: '2025-01-01')
  end

  def test_get_sales_quote
    stub_request(:get, 'https://api.bukku.my/sales/quotes/123').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_sales_quote(123)
  end

  def test_get_sales_orders
    stub_request(:get, 'https://api.bukku.my/sales/orders?status=pending').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_sales_orders(status: 'pending')
  end

  def test_get_sales_order
    stub_request(:get, 'https://api.bukku.my/sales/orders/456').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_sales_order(456)
  end

  def test_get_delivery_orders
    stub_request(:get, 'https://api.bukku.my/sales/delivery_orders').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_delivery_orders
  end

  def test_get_delivery_order
    stub_request(:get, 'https://api.bukku.my/sales/delivery_orders/789').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_delivery_order(789)
  end

  def test_get_invoices
    stub_request(:get, 'https://api.bukku.my/sales/invoices?date_from=2025-01-01&date_to=2025-01-31').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_invoices(date_from: '2025-01-01', date_to: '2025-01-31')
  end

  def test_get_invoice
    stub_request(:get, 'https://api.bukku.my/sales/invoices/999').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_invoice(999)
  end

  def test_get_sales_credit_notes
    stub_request(:get, 'https://api.bukku.my/sales/credit_notes').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_sales_credit_notes
  end

  def test_get_sales_credit_note
    stub_request(:get, 'https://api.bukku.my/sales/credit_notes/111').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_sales_credit_note(111)
  end

  def test_get_sales_payments
    stub_request(:get, 'https://api.bukku.my/sales/payments').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_sales_payments
  end

  def test_get_sales_payment
    stub_request(:get, 'https://api.bukku.my/sales/payments/222').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_sales_payment(222)
  end

  def test_get_sales_refunds
    stub_request(:get, 'https://api.bukku.my/sales/refunds').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_sales_refunds
  end

  def test_get_sales_refund
    stub_request(:get, 'https://api.bukku.my/sales/refunds/333').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_sales_refund(333)
  end

  ## PURCHASE TESTS
  def test_get_purchase_orders
    stub_request(:get, 'https://api.bukku.my/purchases/orders?status=approved').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_purchase_orders(status: 'approved')
  end

  def test_get_purchase_order
    stub_request(:get, 'https://api.bukku.my/purchases/orders/444').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_purchase_order(444)
  end

  def test_get_received_notes
    stub_request(:get, 'https://api.bukku.my/purchases/goods_received_notes').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_received_notes
  end

  def test_get_received_note
    stub_request(:get, 'https://api.bukku.my/purchases/goods_received_notes/555').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_received_note(555)
  end

  def test_get_bills
    stub_request(:get, 'https://api.bukku.my/purchases/bills').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_bills
  end

  def test_get_bill
    stub_request(:get, 'https://api.bukku.my/purchases/bills/666').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_bill(666)
  end

  def test_get_purchases_credit_notes
    stub_request(:get, 'https://api.bukku.my/purchases/credit_notes').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_purchases_credit_notes
  end

  def test_get_purchases_credit_note
    stub_request(:get, 'https://api.bukku.my/purchases/credit_notes/777').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_purchases_credit_note(777)
  end

  def test_get_purchases_payments
    stub_request(:get, 'https://api.bukku.my/purchases/payments').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_purchases_payments
  end

  def test_get_purchases_payment
    stub_request(:get, 'https://api.bukku.my/purchases/payments/888').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_purchases_payment(888)
  end

  def test_get_purchases_refunds
    stub_request(:get, 'https://api.bukku.my/purchases/refunds').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_purchases_refunds
  end

  def test_get_purchases_refund
    stub_request(:get, 'https://api.bukku.my/purchases/refunds/991').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_purchases_refund(991)
  end

  ## BANKING TESTS
  def test_get_banking_incomes
    stub_request(:get, 'https://api.bukku.my/banking/incomes?date_from=2025-01-01').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_banking_incomes(date_from: '2025-01-01')
  end

  def test_get_banking_income
    stub_request(:get, 'https://api.bukku.my/banking/incomes/101').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_banking_income(101)
  end

  def test_get_banking_expenses
    stub_request(:get, 'https://api.bukku.my/banking/expenses').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_banking_expenses
  end

  def test_get_banking_expense
    stub_request(:get, 'https://api.bukku.my/banking/expenses/202').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_banking_expense(202)
  end

  def test_get_transfers
    stub_request(:get, 'https://api.bukku.my/banking/transfers').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_transfers
  end

  def test_get_transfer
    stub_request(:get, 'https://api.bukku.my/banking/transfers/303').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_transfer(303)
  end

  ## CONTACT TESTS
  def test_get_contacts
    stub_request(:get, 'https://api.bukku.my/contacts?type=customer').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_contacts(type: 'customer')
  end

  def test_get_contact
    stub_request(:get, 'https://api.bukku.my/contacts/404').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_contact(404)
  end

  def test_get_contact_groups
    stub_request(:get, 'https://api.bukku.my/contacts/groups').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_contact_groups
  end

  def test_get_contact_group
    stub_request(:get, 'https://api.bukku.my/contacts/groups/505').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_contact_group(505)
  end

  ## PRODUCT TESTS
  def test_get_products
    stub_request(:get, 'https://api.bukku.my/products?category=electronics').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_products(category: 'electronics')
  end

  def test_get_product
    stub_request(:get, 'https://api.bukku.my/products/606').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_product(606)
  end

  def test_get_product_groups
    stub_request(:get, 'https://api.bukku.my/products/groups').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_product_groups
  end

  def test_get_product_group
    stub_request(:get, 'https://api.bukku.my/products/groups/707').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_product_group(707)
  end

  ## SALES CREATE TESTS
  def test_create_quote
    stub_request(:post, 'https://api.bukku.my/sales/quotes').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_quote(body: { name: 'test' })
  end

  def test_create_sales_order
    stub_request(:post, 'https://api.bukku.my/sales/orders').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_sales_order(body: { name: 'test' })
  end

  def test_create_delivery_order
    stub_request(:post, 'https://api.bukku.my/sales/delivery_orders').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_delivery_order(body: { name: 'test' })
  end

  def test_create_invoice
    stub_request(:post, 'https://api.bukku.my/sales/invoices').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_invoice(body: { name: 'test' })
  end

  def test_create_credit_note
    stub_request(:post, 'https://api.bukku.my/sales/credit_notes').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_credit_note(body: { name: 'test' })
  end

  def test_create_payment
    stub_request(:post, 'https://api.bukku.my/sales/payments').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_payment(body: { name: 'test' })
  end

  def test_create_refund
    stub_request(:post, 'https://api.bukku.my/sales/refunds').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_refund(body: { name: 'test' })
  end

  ## PURCHASE CREATE TESTS
  def test_create_purchase_order
    stub_request(:post, 'https://api.bukku.my/purchases/orders').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_purchase_order(body: { name: 'test' })
  end

  def test_create_received_note
    stub_request(:post, 'https://api.bukku.my/purchases/goods_received_notes').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_received_note(body: { name: 'test' })
  end

  def test_create_bill
    stub_request(:post, 'https://api.bukku.my/purchases/bills').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_bill(body: { name: 'test' })
  end

  def test_create_purchase_credit_note
    stub_request(:post, 'https://api.bukku.my/purchases/credit_note').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_purchase_credit_note(body: { name: 'test' })
  end

  def test_create_purchases_payment
    stub_request(:post, 'https://api.bukku.my/purchases/payments').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_purchases_payment(body: { name: 'test' })
  end

  def test_create_purchases_refund
    stub_request(:post, 'https://api.bukku.my/purchases/refunds').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_purchases_refund(body: { name: 'test' })
  end

  ## BANKING CREATE TESTS
  def test_create_banking_income
    stub_request(:post, 'https://api.bukku.my/banking/incomes').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_banking_income(body: { name: 'test' })
  end

  def test_create_expense
    stub_request(:post, 'https://api.bukku.my/banking/expenses').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_expense(body: { name: 'test' })
  end

  def test_create_transfer
    stub_request(:post, 'https://api.bukku.my/banking/transfer').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_transfer(body: { name: 'test' })
  end

  ## CONTACT CREATE TESTS
  def test_create_contact
    stub_request(:post, 'https://api.bukku.my/contacts').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_contact(body: { name: 'test' })
  end

  def test_create_group
    stub_request(:post, 'https://api.bukku.my/contacts/groups').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_group(body: { name: 'test' })
  end

  ## PRODUCT CREATE TESTS
  def test_get_bundle
    stub_request(:get, 'https://api.bukku.my/products/bundles/808').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_bundle(808)
  end

  def test_create_product
    stub_request(:post, 'https://api.bukku.my/products').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_product(body: { name: 'test' })
  end

  def test_create_bundle
    stub_request(:post, 'https://api.bukku.my/products/bundles').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_bundle(body: { name: 'test' })
  end

  def test_create_product_group
    stub_request(:post, 'https://api.bukku.my/products/groups').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_product_group(body: { name: 'test' })
  end

  ## ACCOUNTING TESTS
  def test_journal_entries
    stub_request(:get, 'https://api.bukku.my/journal_entries?date_from=2025-01-01').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_journal_entries(date_from: '2025-01-01')
  end

  def test_journal_entry
    stub_request(:get, 'https://api.bukku.my/journal_entries/808').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_journal_entry(808)
  end

  def test_accounts
    stub_request(:get, 'https://api.bukku.my/accounts?type=expenses').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_accounts(type: 'expenses')
  end

  def test_account
    stub_request(:get, 'https://api.bukku.my/accounts/909').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.get_account(909)
  end

  def test_create_journal_entry
    stub_request(:post, 'https://api.bukku.my/journal_entries').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_journal_entry(body: { name: 'test' })
  end

  def test_create_account
    stub_request(:post, 'https://api.bukku.my/accounts').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      },
      body: '{"name":"test"}'
    )
    @bukku.create_account(body: { name: 'test' })
  end

  ## FILE TESTS
  def test_upload_file
    stub_request(:post, 'https://api.bukku.my/files').with(
      headers: {
        'Authorization' => 'Bearer abc123',
        'Company-Subdomain' => 'test',
        'Accept' => 'application/json'
      }
    )
    @bukku.upload_file(file_data: 'test content', filename: 'invoice.pdf', mime_type: 'application/pdf')
  end
end
