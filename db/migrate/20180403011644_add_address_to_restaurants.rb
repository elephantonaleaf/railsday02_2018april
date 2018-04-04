class AddAddressToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :food_type, :string
  end
end
