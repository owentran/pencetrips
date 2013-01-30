class Package < ActiveRecord::Base

	belongs_to :place

	attr_accessible :description, :name, :place_id
end
