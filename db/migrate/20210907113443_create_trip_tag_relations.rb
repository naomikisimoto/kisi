class CreateTripTagRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :trip_tag_relations do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
