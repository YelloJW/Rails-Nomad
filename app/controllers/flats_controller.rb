class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :create]
  skip_before_action :authenticate_user!, only: [:index, :show]

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

  private

  def flat_params
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end
end
