template = 
  img_ul: "<ul> {{&img_list}} </ul>"
  img_li: "<li> <img src=\"{{src}} \" width=\"600\" /> </li>"
  
start = true
img_urls = gon.images

$ -> 
  width = 600
  size = img_urls.length
  speed = 400 
  i = 1
  img_list = ""
  
  for url in img_urls
    img = new Image()
    img.src = url
    if img.complete
      view = src: img.src
      output = Mustache.to_html(template["img_li"], view)
      img_list += output
    img.onload = () ->
      view = src: img.src
      output = Mustache.to_html(template["img_li"], view)
      img_list += output
  
  output = Mustache.render(template["img_ul"], { img_list: img_list })
  
  $("#photos").html(output)
  
  $("#photos ul").width( width*size )

  sh = setInterval ->
         if start
           $("#photos ul").css  "marginLeft": "-"+i*width+"px"
           start = false if i == 0
           i = (i+1) % size
       , speed
        
