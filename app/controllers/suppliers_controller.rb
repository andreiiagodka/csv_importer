class SuppliersController < ApplicationController
  def index
    pagy, suppliers = pagy(Supplier.all)

    render cell(Supplier::Cell::Index, suppliers, pagy: pagy)
  end

  def import
    run Supplier::Operation::Import
    
    if result.success?
    else
    end

    redirect_to suppliers_path
  end
end
