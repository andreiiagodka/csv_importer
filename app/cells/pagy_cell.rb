class PagyCell < Cell::ViewModel
  include Pagy::Frontend

  def show
    render
  end

  private

  def pagy
    options[:pagy]
  end
end
