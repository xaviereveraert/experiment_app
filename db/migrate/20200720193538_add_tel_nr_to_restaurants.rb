class AddTelNrToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :tel_nr, :integer
  end
end
