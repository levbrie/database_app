class Organization < ActiveRecord::Base
	set_table_name "organization"
	attr_accessible :description, :org_id, :org_type, :title

	has_many :exhibitions

	def hostedExhibitions
		listback = []
		@exh = Exhibition.all
		@exh.each do |e|
			if self.org_id == e.organizer
				listback << e
			end
		end
		listback
	end


	def ownedCollections
		listback = []
		@col = Collection.all
		@col.each do |c|
			if self.org_id == c.belongs_id
				listback << c
			end
		end
		listback
	end

	def borrowedCollections
		listback = []
		@col = Collection.all
		@col.each do |c|
			if self.org_id == c.loaned_id
				listback << c
			end
		end
		listback
	end





end
