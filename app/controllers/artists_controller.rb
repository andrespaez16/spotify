class ArtistsController < ApplicationController
   def index
  	@artist = Artist.all
  end

  def new
  	@artist = Artist.new
  end

  def create
  	@artist = Artist.new(artist_params)
  	if @artist.save
  		redirect_to artists_path
  	else
  		render "new"
  	end
  end

  def show
  	@artist = Artist.find(params[:id])
  end

  def destroy
  	@artist = Artist.find(params[:id])
  	@artist.destroy
  	redirect_to artists_path
  end
  private

  def artist_params
  	params.require(:artist).permit(:name, :image_url)
  end
end
