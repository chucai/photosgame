class PhotosController < ApplicationController
  
  def index
    token = params[:token]
    album = Album.find_by_token(token)
    images = album.images
    gon.images = images.map { |image|  image.file.url('main') }
  end
  
end