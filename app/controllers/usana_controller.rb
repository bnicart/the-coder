class UsanaController < ApplicationController
  def index
  end

  def products
    @products = UsanaProduct.all
  end

  def show
  end

  def update
  end

  def destroy
  end
end
