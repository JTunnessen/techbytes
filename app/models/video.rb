class Video < ActiveRecord::Base
# Add cache review App Catalog

	def self.latest
		Video.order(:updated_at).last
	end

	validates_presence_of :title
	validates_uniqueness_of :title
	validates_presence_of :video
	validates_presence_of :description
	validates_presence_of :tags

	belongs_to :admin

	has_reputation :votes, source: :user, aggregated_by: :sum
end
