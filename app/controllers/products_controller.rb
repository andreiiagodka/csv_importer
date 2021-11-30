class ProductsController < ApplicationController
  def index
    pagy, suppliers = pagy(Product.all)

    render cell(Product::Cell::Index, suppliers, pagy: pagy)
  end

  def import
    run Product::Operation::Import

    if result.success?
      flash[:success] = I18n.t('import.success')
    else
      flash[:error] = I18n.t('import.failure')
    end

    redirect_to products_path
  end
end
