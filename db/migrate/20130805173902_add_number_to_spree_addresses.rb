class AddNumberToSpreeAddresses < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :number, :string
  end
end
