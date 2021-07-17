class Loan < ApplicationRecord
    validates :first_name, length: { in: 5..20 }
    validates :age, inclusion: 18...50
end
