class ArtMovement < ActiveRecord::Base
  set_table_name "art_movement"

  attr_accessible :movement_id, :region, :time_period_name, :title, :year_end, :year_start

  	has_many :art_part_of_movement
	has_many :artworks, :through => :art_part_of_movement
end
