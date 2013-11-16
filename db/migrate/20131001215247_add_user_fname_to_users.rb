class AddUserFnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :userFname, :string
  end
end
