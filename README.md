# BukkuRails

Use Rails methods to interact with your data in [Bukku](https://bukku.my/) accounting software.

Take a look at [Bukku's API](https://developers.bukku.my) to know what data you can extract from Bukku.

> As of December 2, 2025, the gem only handles **GET** request. If you require other request, fork the gem and write it and then send us a Pull Request.

## Installation

### Rails

Add the gem into your Gemfile like so:

`gem "bukku_rails"`

### Ruby

1. Install the gem `gem install bukku_rails`

2. Test the gem standalone `irb -r bukku_rails`

3. If your satisfied with the gem usage you can include the gem in your `Gemfile` of your app.

## Usage

You will need 2 things - your **subdomain** and **API Token**.

You can get these after you login into your Bukku account, Control Panel -> Integrations -> Turn ON API Access.

Note: Bukku offers 2 type of access:

1. *Staging* - For testing your app. You can [email Bukku](mailto:dev@bukku.my) for a Staging account which will be a great way to test your Rails app to see if it is extracting the correct data from Bukku's staging server (exactly the same app).

2. *Production* - Your actual Bukku data, where all your data lives.

**Bukku Rails** provides usage for both access, under 2 different classes:

1. *Staging* use the `BukkuTest` class, like so `client = BukkuTest.new(domain: "sub-domain", token: "token-from-bukku-fyi")`

2. *Production* use `Bukku` class, like so `client = Bukku.new(domain: "sub-domain", token: "token-from-bukku-my")`

### Available Methods

Just like in Rails the methods follow the singular and plural expression. Methods with arguments are normally plural, while methods without arguments are singular methods calls.

#### Sales

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_sales_quotes(query-parameters)` | `/sales/quotes` |
| GET | `get_sales_quote(id)` | `/sales/quotes/:id` |
| GET | `get_sales_orders(query-parameters)` | `/sales/orders` |
| GET | `get_sales_order(id)` | `/sales/orders/:id` |
| GET | `get_delivery_orders(query-parameters)` | `/sales/delivery_orders` |
| GET | `get_delivery_order(id)` | `/sales/delivery_orders/:id` |
| GET | `get_invoices(query-parameters)` | `/sales/invoices` |
| GET | `get_invoice(id)` | `/sales/invoices/:id` |
| GET | `get_sales_credit_notes(query-parameters)` | `/sales/credit_notes` |
| GET | `get_sales_credit_note(id)` | `/sales/credit_notes/:id` |
| GET | `get_sales_payments(query-parameters)` | `/sales/payments` |
| GET | `get_sales_payment(id)` | `/sales/payments/:id` |
| GET | `get_sales_refunds(query-parameters)` | `/sales/refunds` |
| GET | `get_sales_refund(id)` | `/sales/refunds/:id` |

#### Purchases

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_purchase_orders(query-parameters)` | `/purchases/orders` |
| GET | `get_purchase_order(id)` | `/purchases/orders/:id` |
| GET | `get_received_notes(query-parameters)` | `/purchases/goods_received_notes` |
| GET | `get_received_note(id)` | `/purchases/goods_received_notes/:id` |
| GET | `get_bills(query-parameters)` | `/purchases/bills` |
| GET | `get_bill(id)` | `/purchases/bills/:id` |
| GET | `get_purchases_credit_notes(query-parameters)` | `/purchases/credit_notes` |
| GET | `get_purchases_credit_note(id)` | `/purchases/credit_notes/:id` |
| GET | `get_purchases_payments(query-parameters)` | `/purchases/payments` |
| GET | `get_purchases_payments(id)` | `/purchases/payments/:id` |
| GET | `get_purchases_refunds(query-parameters)` | `/purchases/refunds` |
| GET | `get_purchases_refund(id)` | `/purchases/refunds/:id` |

#### Banking

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_banking_incomes(query-parameters)` | `/banking/incomes` |
| GET | `get_banking_income(id)` | `/banking/incomes/:id` |
| GET | `get_banking_expenses(query-parameters)` | `/banking/expenses` |
| GET | `get_banking_expense(id)` | `/banking/expenses/:id` |
| GET | `get_transfers(query-parameters)` | `/banking/transfers` |
| GET | `get_transfer(id)` | `/banking/transfers/:id` |

#### Contacts

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_contacts(query-parameters)` | `/contacts` |
| GET | `get_contact(id)` | `/contacts/:id` |
| GET | `get_contact_groups(query-parameters)` | `/contacts/groups` |
| GET | `get_contact_group(id)` | `/contacts/groups/:id` |

#### Products

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_products(query-parameters)` | `/products` |
| GET | `get_product(id)` | `/products/:id` |
| GET | `get_product_groups(query-parameters)` | `/products/groups` |
| GET | `get_product_group(id)` | `/products/groups/:id` |

#### Accounting

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_journal_entries(query-parameters)` | `/journal_entries` |
| GET | `get_journal_entry(id)` | `/journal_entries/:id` |
| GET | `get_accounts(query-parameters)` | `/accounts` |
| GET | `get_account(id)` | `/accounts/:id` |

### Examples

To use the gem you will need to initialize a client first. Either choose a Bukku's Staging or Production server to test your app.

For Staging at <https://api.bukku.fyi>

```ruby
client = BukkuTest.new(
  token: "your_bukku_api_token",
  domain: "your_company_subdomain"
)
```

For Production at <https://api.bukku.my>

```ruby
client = Bukku.new(
  token: "your_bukku_api_token",
  domain: "your_company_subdomain"
)
```

**Fetch all invoices:**

```ruby
invoices = client.get_invoices
```

**Fetch invoices with date filters or parameters:**
To know more on what Query Parameters is acceptable head to [Bukku API page](https://developers.bukku.my)

```ruby
invoices = client.get_invoices(date_from: "2025-11-01", date_to: "2025-11-30")
```

**Fetch a specific invoice:**

```ruby
invoice = client.get_invoice(123)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/stopar/bukku_rails>.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
