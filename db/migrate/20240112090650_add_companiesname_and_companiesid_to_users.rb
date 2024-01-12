class AddCompaniesnameAndCompaniesidToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :companies_id, :integer
  end
end
