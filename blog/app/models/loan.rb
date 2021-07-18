class Loan < ApplicationRecord
    validates :first_name, length: { in: 5..20 }
    validates :age, inclusion: 18...50
    validates :first_name, :last_name, :age, :code, :amount, :presence => true
    validates :code, :uniqueness => true
end
