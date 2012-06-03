class PhotosController < ApplicationController
  
  def index
    gon.images = Image.where("user_id = 1").all.map { |image|  image.file.url('main') }
  end
  
end
