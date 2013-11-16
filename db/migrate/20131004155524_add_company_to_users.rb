class AddCompanyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Company, :string
  end
end
