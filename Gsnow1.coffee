$ -> 
	$.fn.extend {
		creatsnow:(n,SP,symbol) ->
			w = ($ window).width()
			h = ($ window).height()
			sph = 2*h
			sn = 100
			snowbody1 = $("<div></div").css {"width":w,"height":h,"position":"relative"}          
			if n then sn = n
			if symbol is "snow" or symbol is undefined
				for i in [0..sn]
					snow = $("<div></div>")
					snow.addClass "snow"
					h1 = Math.random()*h
					w1 = Math.random()*w
					snow.css {"position":"absolute","top":h1,"left":w1}
					snowbody1.append snow
				$(this).append snowbody1
				if SP then sph = h
				$ this
				.append snowbody1.clone()
				.css "top","-"+sph+"px"
		,
		started:(speed) ->
			h = ($ window).height()
			i = parseInt $(this).css "top"
			obj = $ this
			h = 0 - parseInt h
			setInterval () ->
							if i<0
								obj.css "top",i+"px"
								i = i+speed
							else
								i = h
						,1
		}
		