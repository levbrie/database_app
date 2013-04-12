class Exhibition < ActiveRecord::Base
	set_table_name "exhibition"
	attr_accessible :description, :end_date, :exhibition_id, :location, :organizer, :start_date, :title


	has_many :exhibition_referred_bies
	has_many :reference_materials, :through => :exhibition_referred_bies #bad name because of rails

	belongs_to :organization


	def referencedBy
		listback = []
		@ref = ReferenceMaterial.all
		@exhreffed = ExhibitionReferredBy.all
		@ref.each do |r|
			@exhreffed.each do |er|
				if self.exhibition_id == er.exhibition_id
					if er.ref_id == r.ref_id
						listback << r
					end
				end
			end
		end
		listback
	end


	def artworksIn
		listback = []
		@art = Artwork.all
		@featured = ArtworkFeaturedInExhibition.all
		@art.each do |a|
			@featured.each do |f|
				if self.exhibition_id == f.exhibition_id
					if f.art_id == a.art_id
						listback << a
					end
				end
			end
		end
		listback
	end


	def getOrganizer
		Organization.find(self.organizer)
	end




end
