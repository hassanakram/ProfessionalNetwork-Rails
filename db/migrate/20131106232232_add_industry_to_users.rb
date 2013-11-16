class AddIndustryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Industry, :string
  end
end
