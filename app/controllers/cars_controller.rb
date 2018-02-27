class CarsController < ApplicationController
  def index
    @cars = Cars.all
  end

  def show
    @car = Car.find(params[:id])
  end


  def new
    @car = Car.new
  end


  def create
    @car = Car.new(cars_params)
    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end


  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
  if @car.update(cars_params)
    redirect_to cars_path
  else
    render :new
  end
  end


  def destroy
     @car = Car.find(params[:id])
  if @car.destroy
    redirect_to cars_path
  else
    render :new
  end
  end

            private
  def cars_params
    params.require(:car).permit(:user_id, :make, :year, :model, :price_per_day, :story, :available, :photos, )
  end

end
