class CarsController < ApplicationController

  def index
    @cars = Car.all
    # @cars = policy_scope(Car).order(created_at: :desc)
  end

  def show
    @car = Car.find(params[:id])
    # authorize @car
  end


  def new
    @car = Car.new
    # authorize @car
  end


  def create
    @car = Car.new(cars_params)
    @car.user = current_user
    # authorize @car
    if @car.save
      redirect_to dashboard_path
    else
      render :new
    end
  end


  def edit
    @car = Car.find(params[:id])
    # authorize @car
  end

  def update
    @car = Car.find(params[:id])
    # authorize @car
    if @car.update(cars_params)
      redirect_to cars_path
    else
      render :new
    end
  end


  # def destroy
  #   @car = Car.find(params[:id])
  #   # authorize @car
  #   if @car.destroy
  #     redirect_to cars_path
  #   else
  #     render :new
  #   end
  # end


  private
  def cars_params
    params.require(:car).permit(:user_id, :make, :year, :model, :price_per_day, :story, :available, :photo)
  end

end
