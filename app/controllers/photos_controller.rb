class PhotosController < ApplicationController
  
  def index
    token = params[:token]
    album = Album.find_by_token(token)
	if album
      images = album.images
      gon.images = images.map { |image|  image.file.url('main') }
	else
	  gon.images = []
	end
  end
  
end
