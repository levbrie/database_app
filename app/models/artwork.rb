class Artwork < ActiveRecord::Base
  set_table_name "artwork"
  attr_accessible :art_id, :collection_id, :condition, :creation_date, :purchase_date, :title, :value
end
