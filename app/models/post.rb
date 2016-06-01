class Post < ActiveRecord::Base
# Add cache review App Catalog
	def self.latest
		Post.order(:updated_at).last
	end

end
