class Article < ApplicationRecord
    validates :name, length: { in: 5..20 }
    validates :name, :body, :presence => true
end
