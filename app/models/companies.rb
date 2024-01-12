class Companies < ApplicationRecord
    self.table_name = "companies"
    has_many :users
end
