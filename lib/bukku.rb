class Bukku < Client
  # Usage of this integration as follows:
  # access = Bukku.new(token: "bukku_token_key", domain: "domain")
  # respond = access.<method>(parameters)
  # Example: respond = access.get_sales_invoices(date_from: "2025-11-25", date_to: "2025-11-30")

  BASE_URI = 'https://api.bukku.my'

  ## SALES
  # Quotation
  def get_sales_quotes(**kwargs)
    get '/sales/quotes', query: kwargs
  end

  def get_sales_quote(id)
    get "/sales/quotes/#{id}"
  end

  # Sales Order
  def get_sales_orders(**kwargs)
    get '/sales/orders', query: kwargs
  end

  def get_sales_order(id)
    get "/sales/orders/#{id}"
  end

  # Delivery Order
  def get_delivery_orders(**kwargs)
    get '/sales/delivery_orders', query: kwargs
  end

  def get_delivery_order(id)
    get "/sales/delivery_orders/#{id}"
  end

  # Invoice
  def get_invoices(**kwargs)
    get '/sales/invoices', query: kwargs
  end

  def get_invoice(id)
    get "/sales/invoices/#{id}"
  end

  # Credit Note
  def get_sales_credit_notes(**kwargs)
    get '/sales/credit_notes', query: kwargs
  end

  def get_sales_credit_note(id)
    get "/sales/credit_notes/#{id}"
  end

  # Payment
  def get_sales_payments(**kwargs)
    get '/sales/payments', query: kwargs
  end

  def get_sales_payment(id)
    get "/sales/payments/#{id}"
  end

  # Redund
  def get_sales_refunds(**kwargs)
    get '/sales/refunds', query: kwargs
  end

  def get_sales_refund(id)
    get "/sales/refunds/#{id}"
  end

  ## PURCHASE
  # Purchase Order
  def get_purchase_orders(**kwargs)
    get '/purchases/orders', query: kwargs
  end

  def get_purchase_order(id)
    get "/purchases/orders/#{id}"
  end

  ## Goods Received Note
  def get_received_notes(**kwargs)
    get '/purchases/goods_received_notes', query: kwargs
  end

  def get_received_note(id)
    get "/purchases/goods_received_notes/#{id}"
  end

  # Bill
  def get_bills(**kwargs)
    get '/purchases/bills', query: kwargs
  end

  def get_bill(id)
    get "/purchases/bills/#{id}"
  end

  # Credit Note
  def get_purchases_credit_notes(**kwargs)
    get '/purchases/credit_notes', query: kwargs
  end

  def get_purchases_credit_note(id)
    get "/purchases/credit_notes/#{id}"
  end

  # Payment
  def get_purchases_payments(**kwargs)
    get '/purchases/payments', query: kwargs
  end

  def get_purchases_payment(id)
    get "/purchases/payments/#{id}"
  end

  # Refund
  def get_purchases_refunds(**kwargs)
    get '/purchases/refunds', query: kwargs
  end

  def get_purchases_refund(id)
    get "/purchases/refunds/#{id}"
  end

  ## BANK
  # Money In
  def get_banking_incomes(**kwargs)
    get '/banking/incomes', query: kwargs
  end

  def get_banking_income(id)
    get "/banking/incomes/#{id}"
  end

  # Money Out
  def get_banking_expenses(**kwargs)
    get '/banking/expenses', query: kwargs
  end

  def get_banking_expense(id)
    get "/banking/expenses/#{id}"
  end

  # Transfers
  def get_transfers(**kwargs)
    get '/banking/transfers', query: kwargs
  end

  def get_transfer(id)
    get "/banking/transfers/#{id}"
  end

  ## CONTACT
  # Contacts
  def get_contacts(**kwargs)
    get '/contacts', query: kwargs
  end

  def get_contact(id)
    get "/contacts/#{id}"
  end

  # Groups
  def get_contact_groups(**kwargs)
    get '/contacts/groups', query: kwargs
  end

  def get_contact_group(id)
    get "/contacts/groups/#{id}"
  end

  ## PRODUCT
  # Product
  def get_products(**kwargs)
    get '/products', query: kwargs
  end

  def get_product(id)
    get "/products/#{id}"
  end

  # Groups
  def get_product_groups(**kwargs)
    get '/products/groups', query: kwargs
  end

  def get_product_group(id)
    get "/products/groups/#{id}"
  end

  ## ACCOUNTING
  # Journal Entries
  def get_journal_entries(**kwargs)
    get '/journal_entries', query: kwargs
  end

  def get_journal_entry(id)
    get "/journal_entries/#{id}"
  end

  # Account
  def get_accounts(**kwargs)
    get '/accounts', query: kwargs
  end

  def get_account(id)
    get "/accounts/#{id}"
  end
end
