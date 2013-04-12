class ArtCategory < ActiveRecord::Base
  set_table_name "art_cat"
  
  attr_accessible :art_id, :cat_name

  belongs_to :category
  belongs_to :artwork
end
