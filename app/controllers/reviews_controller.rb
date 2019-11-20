class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @flat = @booking.flat
    if @review.save
      redirect_to flat_path(@flat)
    else
      render 'flats/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
