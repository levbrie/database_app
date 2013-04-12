class ArtMovement < ActiveRecord::Base
	set_table_name "art_movement"

	attr_accessible :movement_id, :region, :time_period_name, :title, :year_end, :year_start

	has_many :art_part_of_movement
	has_many :artworks, :through => :art_part_of_movement









#############Joins

	def artworksIn
		listback = []
		@art = Artwork.all
		@part = ArtPartOfMovement.all
		@art.each do |a|
			@part.each do |p|
				if self.movement_id == p.movement_id
					if p.art_id == a.art_id
						listback << a
					end
				end
			end
		end
		listback
	end



end
