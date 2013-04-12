class ArtPartOfMovement < ActiveRecord::Base
  set_table_name "art_part_of_movement"
  attr_accessible :art_id, :movement_id


  belongs_to :art_movement
  belongs_to :artwork
end
