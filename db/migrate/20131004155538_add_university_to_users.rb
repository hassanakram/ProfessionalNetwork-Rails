class AddUniversityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :University, :string
  end
end
