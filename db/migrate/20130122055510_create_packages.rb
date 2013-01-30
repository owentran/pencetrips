class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :place_id
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end