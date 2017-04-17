class Portfolio < ApplicationRecord
	validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end	

	after_initialize :set_deafults 

	def set_deafults
		self.main_image ||= "http://placehold.it/600x400"
		self.thumb_image ||= "://placehold.it/350x200"
	end	
end
