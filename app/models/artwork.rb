class Artwork < ActiveRecord::Base
	set_table_name "artwork"
	set_primary_key "art_id"
	attr_accessible :art_id, :collection_id, :condition, :image, :creation_date, :purchase_date, :title, :value

	def cats
		ccc = []
		@art = Artwork.all
		@cat = Category.all
		@artcat = ArtCategory.all

			@cat.each do |c|
				@artcat.each do |ac|
					if self.art_id == ac.art_id
						if ac.cat_name == c.cat_name
							ccc << c
						end
					end
				end
			end
		ccc
	end


	has_many :artcategories
	has_many :categories, :through => :artcategories

end

