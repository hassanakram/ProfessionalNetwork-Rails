class AddUserLnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :userLname, :string
  end
end
