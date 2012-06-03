$ -> 
  width = 600
  size = $("#photos ul li").length
  speed = 400 
  i = 1
  
  $("#photos ul").width(width*size)
  
  setInterval ->
    i = (i+1) % size
    $("#photos ul").css  "marginLeft": "-"+i*width+"px"
  , speed
