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








end

