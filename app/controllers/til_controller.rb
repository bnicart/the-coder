class TilController < ApplicationController

  def index
    @tils = Til.all

    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @til = Til.find(params[:id])
  end

  def create
    @til = Til.new(til_params)
    @til.save!

    redirect_to til_index_path and return

  rescue Exception => e
    render json: { message: e.message }, status: :unprocessable_entity
  end

  def update
    @til = Til.find(params[:id])
    @til.update!(til_params)

    render :show
  rescue Exception => e
    render json: { message: e.message }, status: :unprocessable_entity
  end

  def destroy
    @til = Til.find(params[:id])
    @til.destroy!

    render :show
  end

  private

  def til_params
    params.require(:til).permit(:description)
  end
end
