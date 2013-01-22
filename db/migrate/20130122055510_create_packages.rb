class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.text :body
      t.integer :place_id

      t.timestamps
    end
  end
end
