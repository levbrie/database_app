class ArtworkCreatedBy < ActiveRecord::Base
  set_table_name "artwork_created_by"
  attr_accessible :art_id, :artist_id

  belongs_to :artist
  belongs_to :artwork


end
