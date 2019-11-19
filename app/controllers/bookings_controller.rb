class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @flat = params[:flat_id]
    @user = current_user.id
    if params.dig(:booking, :from_date).nil? || params.dig(:booking, :to_date).nil?
      flash[:notice] = "Request invalid"
      redirect_to new_flat_booking_path(@flat)
    else
      @from_date = Date.parse params.dig(:booking, :from_date)
      @to_date = Date.parse params.dig(:booking, :to_date)

      @booking = Booking.create(from_date: @from_date, to_date: @to_date, flat_id: @flat, user_id: @user)
      flash[:notice] = "Booking request sent"
      redirect_to flat_path(@flat)
    end
  end
end
