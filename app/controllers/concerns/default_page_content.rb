module DefaultPageContent
	extend ActiveSupport::Concern

	included do
 	 before_filter :set_page_defaults
	end

	def set_page_defaults
  	@page_title = "RootPortfolio | My Porfolio Site"
  	@seo_keywords = "Rutul Shah portfolio"
  	end
end