class Video < ActiveRecord::Base
# Add cache review App Catalog

	def self.latest
		Video.order(:updated_at).last
	end
end
