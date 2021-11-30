class PagyCell < ApplicationCell
  include Pagy::Frontend

  private

  def pagy
    options[:pagy]
  end
end
