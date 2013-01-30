class Place < ActiveRecord::Base

	has_many :packages

	attr_accessible :description, :name, :depart_at
end
