class Artist < ActiveRecord::Base
	set_table_name "artist"
	attr_accessible :artist_id, :birth, :death, :first_name, :last_name, :nationality, :pseudonym, :url


	has_many :artwork_created_bies
	has_many :artworks, :through => :artwork_created_bies #bad name because of rails



	has_many :artist_referred_bies
	has_many :reference_materials, :through => :artist_referred_bies #bad name because of rails



#############Joins

def artworksIn
	listback = []
	@art = Artwork.all
	@artcreated = ArtworkCreatedBy.all
	@art.each do |a|
		@artcreated.each do |ac|
			if self.artist_id == ac.artist_id
				if a.art_id == ac.art_id
					listback << a
				end
			end
		end
	end
	listback
end



def referencedBy
	listback = []
	@ref = ReferenceMaterial.all
	@artreffed = ArtistReferredBy.all
	@ref.each do |r|
		@artreffed.each do |ar|
			if self.artist_id == ar.artist_id
				if ar.ref_id == r.ref_id
					listback << r
				end
			end
		end
	end
	listback
end


end
