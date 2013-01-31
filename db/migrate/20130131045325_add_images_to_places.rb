class AddImagesToPlaces < ActiveRecord::Migration
  def change
  	add_column :places, :image, :text
  	add_column :places, :package_1, :text
  	add_column :places, :image_1, :text
  	add_column :places, :package_2, :text
   	add_column :places, :image_2, :text 	
  	add_column :places, :package_3, :text
   	add_column :places, :image_3, :text 	
  end
end
