class BukkuTest < Client
  # Usage of this integration as follows:
  # access = BukkuTest.new(token: "bukku_token_key", domain: "domain")
  # respond = access.<method>

  # Testing URL
  BASE_URI = 'https://api.bukku.fyi'

  ## SALES
  # Quotation
  def get_sales_quotes(**kwargs)
    get '/sales/quotes', query: kwargs
  end

  def get_sales_quote(id)
    get "/sales/quotes/#{id}"
  end

  def create_quote(body:)
    post '/sales/quotes', body: body
  end

  # Sales Order
  def get_sales_orders(**kwargs)
    get '/sales/orders', query: kwargs
  end

  def get_sales_order(id)
    get "/sales/orders/#{id}"
  end

  def create_sales_order(body:)
    post '/sales/orders', body: body
  end

  # Delivery Order
  def get_delivery_orders(**kwargs)
    get '/sales/delivery_orders', query: kwargs
  end

  def get_delivery_order(id)
    get "/sales/delivery_orders/#{id}"
  end

  def create_delivery_order(body:)
    post '/sales/delivery_orders', body: body
  end

  # Invoice
  def get_invoices(**kwargs)
    get '/sales/invoices', query: kwargs
  end

  def get_invoice(id)
    get "/sales/invoices/#{id}"
  end

  def create_invoice(body:)
    post '/sales/invoices', body: body
  end

  # Credit Note
  def get_sales_credit_notes(**kwargs)
    get '/sales/credit_notes', query: kwargs
  end

  def get_sales_credit_note(id)
    get "/sales/credit_notes/#{id}"
  end

  def create_credit_note(body:)
    post '/sales/credit_notes', body: body
  end

  # Payment
  def get_sales_payments(**kwargs)
    get '/sales/payments', query: kwargs
  end

  def get_sales_payment(id)
    get "/sales/payments/#{id}"
  end

  def create_payment(body:)
    post '/sales/payments', body: body
  end

  # Refund
  def get_sales_refunds(**kwargs)
    get '/sales/refunds', query: kwargs
  end

  def get_sales_refund(id)
    get "/sales/refunds/#{id}"
  end

  def create_refund(body:)
    post '/sales/refunds', body: body
  end

  ## PURCHASE
  # Purchase Order
  def get_purchase_orders(**kwargs)
    get '/purchases/orders', query: kwargs
  end

  def get_purchase_order(id)
    get "/purchases/orders/#{id}"
  end

  def create_purchase_order(body:)
    post '/purchases/orders', body: body
  end

  ## Goods Received Note
  def get_received_notes(**kwargs)
    get '/purchases/goods_received_notes', query: kwargs
  end

  def get_received_note(id)
    get "/purchases/goods_received_notes/#{id}"
  end

  def create_received_note(body:)
    post '/purchases/goods_received_notes', body: body
  end

  # Bill
  def get_bills(**kwargs)
    get '/purchases/bills', query: kwargs
  end

  def get_bill(id)
    get "/purchases/bills/#{id}"
  end

  def create_bill(body:)
    post '/purchases/bills', body: body
  end

  # Credit Note
  def get_purchases_credit_notes(**kwargs)
    get '/purchases/credit_notes', query: kwargs
  end

  def get_purchases_credit_note(id)
    get "/purchases/credit_notes/#{id}"
  end

  def create_purchase_credit_note(body:)
    post '/purchases/credit_note', body: body
  end

  # Payment
  def get_purchases_payments(**kwargs)
    get '/purchases/payments', query: kwargs
  end

  def get_purchases_payment(id)
    get "/purchases/payments/#{id}"
  end

  def create_purchases_payment(body:)
    post '/purchases/payments', body: body
  end

  # Refund
  def get_purchases_refunds(**kwargs)
    get '/purchases/refunds', query: kwargs
  end

  def get_purchases_refund(id)
    get "/purchases/refunds/#{id}"
  end

  def create_purchases_refund(body:)
    post '/purchases/refunds', body: body
  end

  ## BANK
  # Money In
  def get_banking_incomes(**kwargs)
    get '/banking/incomes', query: kwargs
  end

  def get_banking_income(id)
    get "/banking/incomes/#{id}"
  end

  def create_banking_income(body:)
    post '/banking/incomes', body: body
  end

  # Money Out
  def get_banking_expenses(**kwargs)
    get '/banking/expenses', query: kwargs
  end

  def get_banking_expense(id)
    get "/banking/expenses/#{id}"
  end

  def create_expense(body:)
    post '/banking/expenses', body: body
  end

  # Transfers
  def get_transfers(**kwargs)
    get '/banking/transfers', query: kwargs
  end

  def get_transfer(id)
    get "/banking/transfers/#{id}"
  end

  def create_transfer(body:)
    post '/banking/transfer', body: body
  end

  ## CONTACT
  # Contacts
  def get_contacts(**kwargs)
    get '/contacts', query: kwargs
  end

  def get_contact(id)
    get "/contacts/#{id}"
  end

  def create_contact(body:)
    post '/contacts', body: body
  end

  # Groups
  def get_contact_groups(**kwargs)
    get '/contacts/groups', query: kwargs
  end

  def get_contact_group(id)
    get "/contacts/groups/#{id}"
  end

  def create_group(body:)
    post '/contacts/groups', body: body
  end

  ## PRODUCT
  # Product
  def get_products(**kwargs)
    get '/products', query: kwargs
  end

  def get_product(id)
    get "/products/#{id}"
  end

  def create_product(body:)
    post '/products', body: body
  end

  # Bundles
  def get_bundle(id)
    get "/products/bundles/#{id}"
  end

  def create_bundle(body:)
    post '/products/bundles', body: body
  end

  # Groups
  def get_product_groups(**kwargs)
    get '/products/groups', query: kwargs
  end

  def get_product_group(id)
    get "/products/groups/#{id}"
  end

  def create_product_group(body:)
    post '/products/groups', body: body
  end

  ## ACCOUNTING
  # Journal Entries
  def get_journal_entries(**kwargs)
    get '/journal_entries', query: kwargs
  end

  def get_journal_entry(id)
    get "/journal_entries/#{id}"
  end

  def create_journal_entry(body:)
    post '/journal_entries', body: body
  end

  # Account
  def get_accounts(**kwargs)
    get '/accounts', query: kwargs
  end

  def get_account(id)
    get "/accounts/#{id}"
  end

  def create_account(body:)
    post '/accounts', body: body
  end

  # Files
  def upload_file(file_data:, filename:, mime_type:)
    upload '/files', file_data: file_data, filename: filename, mime_type: mime_type
  end
end
