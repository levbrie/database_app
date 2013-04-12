class ArtworkFeaturedInExhibition < ActiveRecord::Base
  set_table_name "artwork_featured_in_exhibition"
  attr_accessible :art_id, :exhibition_id

  belongs_to :exhibition
  belongs_to :artwork
end
