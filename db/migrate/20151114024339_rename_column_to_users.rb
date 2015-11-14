class RenameColumnToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :encrypted_password, :password
    rename_column :users, :encrypted_password_confirmation, :password_confirmation
  end
end
