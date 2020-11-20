class BookingsController < ApplicationController
before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @pokemon = Pokemon.find(@booking.pokemon_id)
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    pokemon = Pokemon.find(params[:pokemon_id])
    @booking = Booking.new(booking_params)
    authorize @booking

    @booking.user = current_user
    @booking.pokemon = pokemon
    @booking.total_price = pokemon.price
    @booking.save

        flash[:notice] = "You catched it!"
        redirect_to user_path(current_user)
    end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
