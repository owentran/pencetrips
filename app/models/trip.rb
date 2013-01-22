class Trip < ActiveRecord::Base
  attr_accessible :age, :credit_card_id, :end_date, :first_name, :last_name, :place_id, :start_date, :total
end
