class Exhibition < ActiveRecord::Base
	set_table_name "exhibition"
	attr_accessible :description, :end_date, :exhibition_id, :location, :organizer, :start_date, :title


	has_many :exhibition_referred_bies
	has_many :reference_materials, :through => :exhibition_referred_bies #bad name because of rails
end
