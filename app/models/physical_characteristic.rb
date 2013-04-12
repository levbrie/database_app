class PhysicalCharacteristic < ActiveRecord::Base
  set_table_name "physical_characteristics"
  attr_accessible :art_id, :height, :volume, :weight, :width
  
  belongs_to :artwork
end
