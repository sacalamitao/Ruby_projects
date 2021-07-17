json.extract! loan, :id, :first_name, :last_name, :age, :amount, :code, :created_at, :updated_at
json.url loan_url(loan, format: :json)
