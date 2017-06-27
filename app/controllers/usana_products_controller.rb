class UsanaProductsController < ApplicationController
  def index
    @products = UsanaProduct.all

    respond_to do |format|
      format.html
      format.json
    end
  end

  def product_params
    params.require(:product).permit(:name, :points, :distributor_price, :customer_price, :quantity, :image, :supplement_facts, :description, :short_description, :how_to_use, :trivia, :who_can_benefit, :additional_info, :item_code)
  end
end
