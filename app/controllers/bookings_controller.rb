class BookingsController < ApplicationController
 def index
    @bookings = Bookings.all
  end

  def show
    @booking = Booking.find(params[:id])
  end


  def new
    @booking = Booking.new
  end


  def create
    @booking = Booking.new(bookings_params)
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end


  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
  if @booking.update(bookings_params)
    redirect_to bookings_path
  else
    render :new
  end
  end


  def destroy
     @booking = Booking.find(params[:id])
  if @booking.destroy
    redirect_to bookings_path
  else
    render :new
  end
  end

            private
  def bookings_params
    params.require(:booking).permit(:user_id, :car_id, :start_id, :end_date, :price)
  end

end
