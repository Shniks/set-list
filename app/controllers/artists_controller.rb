class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new

  end

  def create
    Artist.create!(artist_params)

    redirect_to '/artists'
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artist_params)

    redirect_to '/artists'
  end

  def destroy
    Artist.destroy(params[:id])

    redirect_to '/artists'
  end

end


private

def artist_params
  params.permit(:name)
end
