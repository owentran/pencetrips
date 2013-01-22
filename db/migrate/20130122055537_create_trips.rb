class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :place_id
      t.integer :credit_card_id
      t.date :start_date
      t.date :end_date
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :total

      t.timestamps
    end
  end
end
