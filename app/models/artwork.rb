class Artwork < ActiveRecord::Base
	set_table_name "artwork"
	set_primary_key "art_id"
	attr_accessible :art_id, :collection_id, :condition, 
	:image, :creation_date, :purchase_date, 
	:title, :value



	has_many :artcategories
	has_many :categories, :through => :artcategories

	has_many :art_part_of_movement
	has_many :art_movements, :through => :art_part_of_movement

	has_many :artwork_created_bies
	has_many :artists, :through => :artwork_created_bies #bad name because of rails

	has_many :art_referred_bies
	has_many :reference_materials, :through => :art_referred_bies #bad name because of rails




	############  Joins #####################

	def artworkcategories
		listback = []
		@cat = Category.all
		@artcat = ArtCategory.all
		@cat.each do |c|
			@artcat.each do |ac|
				if self.art_id == ac.art_id
					if ac.cat_name == c.cat_name
						listback << c
					end
				end
			end
		end
		listback
	end


	def artworkmovements
		listback = []
		@mov = ArtMovement.all
		@part = ArtPartOfMovement.all
		@mov.each do |m|
			@part.each do |p|
				if self.art_id == p.art_id
					if p.movement_id == m.movement_id
						listback << m
					end
				end
			end
		end
		listback
	end


	def artistsBy
		listback = []
		@artist = Artist.all
		@artcreated = ArtworkCreatedBy.all
		@artist.each do |a|
			@artcreated.each do |ac|
				if self.art_id == ac.art_id
					if ac.artist_id == a.artist_id
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
		@artreffed = ArtReferredBy.all
		@ref.each do |r|
			@artreffed.each do |ar|
				if self.art_id == ar.art_id
					if ar.ref_id == r.ref_id
						listback << r
					end
				end
			end
		end
		listback
	end


		def exhibitedIn
		listback = []
		@exh = Exhibition.all
		@featured = ArtworkFeaturedInExhibition.all
		@exh.each do |e|
			@featured.each do |f|
				if self.art_id == f.art_id
					if f.exhibition_id == e.exhibition_id
						listback << e
					end
				end
			end
		end
		listback
	end


	def getCollection
		Collection.find(self.collection_id)
	end
	


	def getPhysicalCharacteristics
		PhysicalCharacteristic.find(self.art_id)
	end









end

