class Collection < ActiveRecord::Base
	set_table_name "collection"
	attr_accessible :belongs_id, :collection_id, :loaned_id, :manager, :title, :value

	def getBelongsTo
		Organization.find(self.belongs_id)
	end

	def getLoanedTo
		if self.loaned_id
			Organization.find(self.loaned_id)
		end
	end

	def getArtworks
		listback = []
		@art = Artwork.all
		@art.each do |a|
			if self.collection_id == a.collection_id
				listback << a
			end
		end
		listback
	end


	belongs_to :organization
end
