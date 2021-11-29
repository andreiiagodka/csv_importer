class SuppliersController < ApplicationController
  def index
    pagy, suppliers = pagy(Supplier.all)

    render cell(Supplier::Cell::Index, suppliers, pagy: pagy)
  end
end
