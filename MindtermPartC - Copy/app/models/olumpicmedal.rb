class Olumpicmedal < ActiveRecord::Base
	validates :athlete_name, presence: { message: "required" }
	validates :country, presence: { message: "required" }
	validates :medal_type, :inclusion => { :in => ["gold", "silver", "bronze"] }
		
end
