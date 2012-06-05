class WelcomeController < ApplicationController
  def index
    gon.images = Album.first.images.map { |image| image.file.url('main') }
  end
end
