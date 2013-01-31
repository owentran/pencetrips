class Place < ActiveRecord::Base

	attr_accessible :description, :name, :depart_at, :image
	attr_accessible :package_1, :image_1
	attr_accessible :package_2, :image_2
	attr_accessible :package_3, :image_3

	validates :name, :description, :depart_at, :presence => true
	validates :name, :uniqueness => true

end
