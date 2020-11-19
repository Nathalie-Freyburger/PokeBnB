class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    params[:query].present? ? @pokemons = Pokemon.where("name ILIKE ?", "%#{params[:query]}%") : @pokemons = Pokemon.all
    @markers = @pokemons.geocoded.map do |pokemon|
      {
        lat: pokemon.latitude,
        lng: pokemon.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { pokemon: pokemon }),
        image_url: helpers.asset_url('https://cdn.glitch.com/c13537fc-8924-4dee-b876-b562eed68eae%2Fpokeball.svg')
      }
    end
  end

  def show
  end

  def new
    @pokemon = Pokemon.new
    authorize @pokemon
  end

  def edit
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.user = current_user
    authorize @pokemon

    if @pokemon.save
      redirect_to @pokemon, notice: 'Your pokemon was successfully created.'
    else
      render :new
    end
  end

  def update
    if @pokemon.update(pokemon_params)
      redirect_to @pokemon, notice: 'Pokemon was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @pokemon.destroy
    redirect_to root_path, notice: 'Pokemon was successfully destroyed.'
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
  end

  def pokemon_params
    params.require(:pokemon).permit(:name, :abilities, :price, :level, :photo)
  end
end
