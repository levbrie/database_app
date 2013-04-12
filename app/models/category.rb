class Category < ActiveRecord::Base
  set_table_name "category"
   set_primary_key "cat_name"
   attr_accessible :cat_name, :genre, :material


   has_many :art_cat
   has_many :artworks, :through => :art_cat







#############Joins

	def artworksIn
		listback = []
		@art = Artwork.all
		@cat = ArtCategory.all
		@art.each do |a|
			@cat.each do |c|
				if self.cat_name == c.cat_name
					if a.art_id == c.art_id
						listback << a
					end
				end
			end
		end
		listback
	end

end
