class AddProviderUidPhnoStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :phone_number, :string
    add_column :users, :status, :boolean
  end
end
