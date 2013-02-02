class Trip < ActiveRecord::Base

	belongs_to :place

 	attr_accessible :first_name, :last_name, :place_id, :package_id

 	validates :first_name, :last_name, :place_id, :package_id, :presence => true
end
