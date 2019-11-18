class FlatsController < ApplicationController
  def index
    @search = params[:search]
    if @search.nil?
      @flats = Flats.all
    else
      @flats = Flat.where('address ILIKE ?', "%#{@search}%")
    end
  end

  def show
  end

  def new
  end

  def create
  end

end
