class AddPostelCodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :postelCode, :string
  end
end
