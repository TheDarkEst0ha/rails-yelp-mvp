class AddingAcceptsReservationsToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :accepts_reservations, :boolean, default: false
  end
end
