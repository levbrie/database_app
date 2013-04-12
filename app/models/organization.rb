class Organization < ActiveRecord::Base
	set_table_name "organization"
	attr_accessible :description, :org_id, :org_type, :title

	has_many :exhibitions








end
