class Album < ActiveRecord::Base
  attr_accessible :desc
  
  after_create :generate_token
  
  has_many :images
  
  #唯一url
  def url
    "http://localhost:3000/#{self.token}"
  end
  
  #生成唯一的token
  def generate_token
    begin
      self.token = Album.random
      self.save!
    rescue ActiveRecord::RecordNotUnique => e
      retry
    end
  end
  
  ID_LENGTH = 128
  class << self
    def random(bitlength = ID_LENGTH)
      limit = 2 ** bitlength - 1
      max_size = limit.to_s(36).size
      string = rand(limit).to_s(36)
      string = '0' + string while string.size < max_size
      string
    end
  end
  
end
