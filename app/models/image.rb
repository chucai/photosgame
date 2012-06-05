class Image < ActiveRecord::Base
  attr_accessible :file, :order
  
  mount_uploader :file, ImageUploader
  
  validates :file, :presence => true
  
  belongs_to :user
  belongs_to :album
  
end
