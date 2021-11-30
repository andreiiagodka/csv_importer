class ProductsController < ApplicationController
  def index
    pagy, suppliers = pagy(Product.all)

    render cell(Product::Cell::Index, suppliers, pagy: pagy)
  end

  def import
    run Product::Operation::Import
    
    if result.success?
    else
    end

    redirect_to products_path
  end
end
