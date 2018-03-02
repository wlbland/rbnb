class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @cars = Car.search_by_make_and_model(params[:query])
    else
      @cars= Car.all
    end
    # if we want to replace the search bar with a filter. This is how we'll do it.
    # @cars = policy_scope(Car).order(created_at: :desc)

    # @cars = Car.all
    # @cars = @cars.where(make: params[:make]) if params[:make]
    # @cars = @cars.where(model: params[:model]) if params[:model]
    # @cars = @cars.where('price <= ?', params[:price]) if params[:price]
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
      redirect_to car_path(@car)
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
