class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def home
    if user_signed_in?
      redirect_to dashboard_path
    end
  end

  def dashboard
    @user = current_user
    @cars = @user.cars
  end
end
