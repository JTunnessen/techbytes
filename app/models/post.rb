class Post < ActiveRecord::Base

	def self.latest
		Post.order(:updated_at).last
	end

end
