class AddJobTitleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :JobTitle, :string
  end
end
