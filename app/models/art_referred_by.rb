class ArtReferredBy < ActiveRecord::Base
	set_table_name "art_referred_by"
	attr_accessible :art_id, :ref_id



	belongs_to :artwork
	belongs_to :reference_material
end
