class AddProviderUidPhnoStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :phone_number, :int
    add_column :users, :status, :boolean, :default => true
  end
end
