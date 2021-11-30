class ApplicationCell < Cell::ViewModel
  include ActionView::Helpers::TranslationHelper
  include ActionView::Context

  def show
    render
  end
end
