class Category < ActiveRecord::Base
  set_table_name "category"
   set_primary_key "cat_name"
   attr_accessible :cat_name, :genre, :material


   has_many :art_cat
   has_many :artworks, :through => :art_cat

end
