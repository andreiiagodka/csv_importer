class ApplicationTrailblazerCell < Trailblazer::Cell
  include ActionView::Context
  include ActionView::Helpers::TranslationHelper
  include SimpleForm::ActionViewExtensions::FormHelper
end