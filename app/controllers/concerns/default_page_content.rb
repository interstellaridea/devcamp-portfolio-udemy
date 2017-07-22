module DefaultPageContent
  extend ActiveSupport::Concern
  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Sebastian Portfolio site'
    @seo_keywords = 'Sebastian blog programming'
  end
end