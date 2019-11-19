class FlatsController < ApplicationController
  before_action :find_flat, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @search = params[:search]
    if @search.nil?
      @flats = Flat.all
    else
      @flats = Flat.where('address ILIKE ?', "%#{@search}%")
    end
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :price_per_night, :electricity, :drinking_water, :sleeps, :description, :flat_type)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end
end
