class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @artist_id = params[:artist_id]
  end

  def create
    song = Song.create!(song_params)

    redirect_to "/songs/#{song.id}"
  end

  def show
    @song = Song.find(params[:id])
  end

  private

  def song_params
    params.permit(:title, :length, :play_count, :artist_id)
  end

end
