class AddDetailToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :detail, :string
  end
end
