class ArtistReferredBy < ActiveRecord::Base
  set_table_name "artist_referred_by"
  attr_accessible :artist_id, :ref_id


  belongs_to :artist
  belongs_to :reference_material

end
