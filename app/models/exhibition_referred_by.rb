class ExhibitionReferredBy < ActiveRecord::Base
  set_table_name "exhibition_referred_by"
  attr_accessible :exhibtion_id, :ref_id


  	belongs_to :exhibition
	belongs_to :reference_material
end
