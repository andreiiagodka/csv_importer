class ProductsController < ApplicationController
  def index
    pagy, suppliers = pagy(Product.all)

    render cell(Product::Cell::Index, suppliers, pagy: pagy)
  end
end
