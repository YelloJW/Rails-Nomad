class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @search = params[:search]
    @flats = search_variables_set(@search)[:flats]
    @message = search_variables_set(@search)[:message]
    @markers = search_variables_set(@search)[:markers]
    # @search_location = Geocoder.search(@search).first.coordinates
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
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :price_per_night, :electricity, :drinking_water, :sleeps, :description, :flat_type, :photo)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def map_markers_set(flats)
    flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { flat: flat })
      }
    end
  end

  def search_variables_set(search)
    if search == ""
      @flats = Flat.all
      return { flats: @flats, message: 'All results', markers: map_markers_set(@flats) }
    else
      search_coordinates = Geocoder.search(search).first.coordinates
    end
    @flats = Flat.near(search_coordinates, 50, units: :km)
    return { flats: @flats, message: "Search results for #{@search}", markers: map_markers_set(@flats) } if @flats != []
    return { flats: nil, message: 'No results found in this area, please search again...', markers: nil }
  end
end
