class AlbumsController < ApplicationController
  def index
  end

  def new
  	puts "*"*100
  	@album = Album.new
  end

  def create
    puts "*"*100
    puts album_params
  	@album = Album.new(album_params)
  	if @album.save
  		redirect_to artist_path
  	else
  		render "new"
  	end
  end

  def destroy
  end

  def album_params
  	params.require(:album).permit(:name, :image_url, :released_at)
  end
end
