class Portfolio < ApplicationRecord
	include  Placeholder
	validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end

	after_initialize :set_deafults

	def set_deafults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end
end
