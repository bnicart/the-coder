class ProductsController < ApplicationController

  def index
    @products = Product.all

    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    @product = Product.new(product_params)
    @product.save!
    @product

    render :show
  rescue Exception => e
    render json: { message: e.message }, status: :unprocessable_entity
  end

  def update
    @product = Product.find(params[:id])
    @product.update!(product_params)

    render :show
  rescue Exception => e
    render json: { message: e.message }, status: :unprocessable_entity
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy!

    render :show
  end

  private

  def product_params
    params.permit(:type, :name, :points, :distributor_price, :customer_price, :quantity, :image, :supplement_facts, :description, :short_description, :how_to_use, :trivia, :who_can_benefit, :additional_info, :item_code)
  end
end
