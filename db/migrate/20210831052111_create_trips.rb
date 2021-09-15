class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :departure
      t.string :destination
      t.string :transportation
      t.date :date
      t.string :whoslive
    
      t.text :thought

      t.timestamps
    end
  end
end
