class AddCurrentPositionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :currentPosition, :string
  end
end
