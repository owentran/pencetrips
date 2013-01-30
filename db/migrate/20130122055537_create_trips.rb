class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :place_id
      t.integer :package_id
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end
