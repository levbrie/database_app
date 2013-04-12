class ReferenceMaterial < ActiveRecord::Base
  set_table_name "reference_material"
  attr_accessible :abstract, :content, :ref_id, :title, :url


	has_many :artist_referred_bies
	has_many :artists, :through => :artist_referred_bies #bad name because of rails

end
