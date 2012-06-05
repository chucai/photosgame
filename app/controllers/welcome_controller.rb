class WelcomeController < ApplicationController
  def index
    if album = Album.first
      gon.images = album.images.map { |image| image.file.url('main') }
	else
	  gon.images = []
	end
  end
end
