class ReferenceMaterial < ActiveRecord::Base
  set_table_name "reference_material"
  attr_accessible :abstract, :content, :ref_id, :title, :url


	has_many :artist_referred_bies
	has_many :artists, :through => :artist_referred_bies #bad name because of rails





###############Relations

def artworksRefferenced
	listback = []
	@art = Artwork.all
	@artreffed = ArtReferredBy.all
	@art.each do |a|
		@artreffed.each do |ar|
			if self.ref_id == ar.ref_id
				if a.art_id == ar.art_id
					listback << a
				end
			end
		end
	end
	listback
end


def artistsRefferenced
	listback = []
	@artist = Artist.all
	@artistsreffed =  ArtistReferredBy.all
	@artist.each do |a|
		@artistsreffed.each do |ar|
			if self.ref_id == ar.ref_id
				if a.artist_id == ar.artist_id
					listback << a
				end
			end
		end
	end
	listback
end







end
