# BukkuRails

Use Rails methods to interact with your data in [Bukku](https://bukku.my/) accounting software.

Take a look at [Bukku's API](https://developers.bukku.my) to know what data you can extract from Bukku.

> As of December 2, 2025, the gem only handles **GET** request. If you require other request, fork the gem and write it and then send us a Pull Request.

## Installation

Add the gen into your Gemfile like so:

`gem "bukku_rails"`

## Usage

You will need 2 things - your **subdomain** and **API Token**.

You can get these after you login into your Bukku account, Control Panel -> Integrations -> Turn ON API Access.

Note: Bukku offers 2 type of access - Staging and Production. You can [email Bukku](mailto:dev@bukku.my) for a Staging account which will be a great way to test your Rails app to see if it is extracting the correct data from Bukku's staging server (exactly the same app but at their staging server). Once you are satisfied you can then use access the Production server where your actual data lives.

**Bukku Rails** provides usage for both access. For Staging use the `BukkuTest` class and actual Production simply use `Bukku` class. Then you can use any of the methods listed in the table below:

### Available Methods

Just like in Rails the methods follow the singular and plural expression. Methods with arguments are normally plural, while methods without arguments are singular methods calls.

#### Sales

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_sales_quotes(**kwargs)` | `/sales/quotes` |
| GET | `get_sales_quote(id)` | `/sales/quotes/:id` |
| GET | `get_sales_orders(**kwargs)` | `/sales/orders` |
| GET | `get_sales_order(id)` | `/sales/orders/:id` |
| GET | `get_delivery_orders(**kwargs)` | `/sales/delivery_orders` |
| GET | `get_delivery_order(id)` | `/sales/delivery_orders/:id` |
| GET | `get_invoices(**kwargs)` | `/sales/invoices` |
| GET | `get_invoice(id)` | `/sales/invoices/:id` |
| GET | `get_sales_credit_notes(**kwargs)` | `/sales/credit_notes` |
| GET | `get_sales_credit_note(id)` | `/sales/credit_notes/:id` |
| GET | `get_sales_payments(**kwargs)` | `/sales/payments` |
| GET | `get_sales_payment(id)` | `/sales/payments/:id` |
| GET | `get_sales_refunds(**kwargs)` | `/sales/refunds` |
| GET | `get_sales_refund(id)` | `/sales/refunds/:id` |

#### Purchases

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_purchase_orders(**kwargs)` | `/purchases/orders` |
| GET | `get_purchase_order(id)` | `/purchases/orders/:id` |
| GET | `get_received_notes(**kwargs)` | `/purchases/goods_received_notes` |
| GET | `get_received_note(id)` | `/purchases/goods_received_notes/:id` |
| GET | `get_bills(**kwargs)` | `/purchases/bills` |
| GET | `get_bill(id)` | `/purchases/bills/:id` |
| GET | `get_purchases_credit_notes(**kwargs)` | `/purchases/credit_notes` |
| GET | `get_purchases_credit_note(id)` | `/purchases/credit_notes/:id` |
| GET | `get_purchases_payments(**kwargs)` | `/purchases/payments` |
| GET | `get_purchases_payments(id)` | `/purchases/payments/:id` |
| GET | `get_purchases_refunds(**kwargs)` | `/purchases/refunds` |
| GET | `get_purchases_refund(id)` | `/purchases/refunds/:id` |

#### Banking

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_banking_incomes(**kwargs)` | `/banking/incomes` |
| GET | `get_banking_income(id)` | `/banking/incomes/:id` |
| GET | `get_banking_expenses(**kwargs)` | `/banking/expenses` |
| GET | `get_banking_expense(id)` | `/banking/expenses/:id` |
| GET | `get_transfers(**kwargs)` | `/banking/transfers` |
| GET | `get_transfer(id)` | `/banking/transfers/:id` |

#### Contacts

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_contacts(**kwargs)` | `/contacts` |
| GET | `get_contact(id)` | `/contacts/:id` |
| GET | `get_contact_groups(**kwargs)` | `/contacts/groups` |
| GET | `get_contact_group(id)` | `/contacts/groups/:id` |

#### Products

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_products(**kwargs)` | `/products` |
| GET | `get_product(id)` | `/products/:id` |
| GET | `get_product_groups(**kwargs)` | `/products/groups` |
| GET | `get_product_group(id)` | `/products/groups/:id` |

#### Accounting

| HTTP Method | Ruby Method | Endpoint |
|------------|-------------|----------|
| GET | `get_journal_entries(**kwargs)` | `/journal_entries` |
| GET | `get_journal_entry(id)` | `/journal_entries/:id` |
| GET | `get_accounts(**kwargs)` | `/accounts` |
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
