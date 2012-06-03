# -*- encoding: utf-8 -*-
# download images from web site\

1.upto 19 do |i|
  url = "http://106.187.95.72:3000/images/#{i}.bmp"
  cmd = "wget #{url}"
  `#{cmd}`
end