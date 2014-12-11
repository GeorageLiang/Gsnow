$ -> 
	$.fn.extend {
		creatsnow:(n,SP,symbol) ->
			w = ($ this).width()
			h = ($ this).height()
			sph = 2*h
			sn = 100
			snowbox = $("<div></div>")
			snowbody1 = $("<div></div").css {"width":w,"height":h,"position":"relative","margin":0}          
			if n then sn = n
			if symbol is "snow" or symbol is undefined
				for i in [0..sn]
					snow = $("<div></div>")
					snow.addClass "snow"
					h1 = Math.random()*h
					w1 = Math.random()*w
					snow.css {"position":"absolute","top":h1,"left":w1}
					snowbody1.append snow
				snowbox.append snowbody1
				if SP then sph = h
				snowbox
				.append snowbody1.clone()
				.css {"top":"-"+sph+"px","height":sph+"px","position":"absolute"}
				$ this
				.append snowbox
				.css "overflow","hidden"
		,
		started:(speed) ->
			h = ($ this).height()
			obj = ($ this).children()
			i = parseInt obj.css "top"
			h = 0 - parseInt h
			setInterval () ->
							if i<0
								obj.css "top",i+"px"
								i = i+speed
							else
								i = h
						,1
		}
		