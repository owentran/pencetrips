class Trip < ActiveRecord::Base

	has_one :place

 	attr_accessible :first_name, :last_name, :place_id, :package_id
end
