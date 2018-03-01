class BookingsController < ApplicationController


  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.car = Car.find(params[:car_id])
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end




  private
  def bookings_params
    params.require(:booking).permit(:car_id, :start_date, :end_date)
  end

end
