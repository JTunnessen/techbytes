class Video < ActiveRecord::Base

	def self.latest
		Video.order(:updated_at).last
	end
end
