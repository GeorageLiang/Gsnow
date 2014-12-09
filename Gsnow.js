$(function(){
	$.fn.extend({
			creatsnow:function(n,SP,symbol){
				var w = $(window).width();
                var h = $(window).height();
                var sph = 2*h;
                var sn = 100;
                var snowbody1 =  $("<div></div>").css({"width":w,"height":h,"position":"relative"});
                if(n){
                	sn = n;
                }
                if(symbol=="snow" || symbol==undefined){
                    for(i=0;i<sn;i++){
                        var snow = $("<div></div>");
                        snow.addClass("snow");
                        var h1 = Math.random()*h;
                        var w1 = Math.random()*w;
                        snow.css("position","absolute");
                        snow.css("top",h1);
                        snow.css("left",w1);
                        snowbody1.append(snow);
                    }
                    $(this).append(snowbody1);
                    if(SP){
                    	sph = h;
                    }
                    $(this).append(snowbody1.clone()).css("top","-"+sph+"px");
                }
            },

            started:function(speed){
            	var h = $(window).height();
                var i = parseInt($(this).css("top"));
                var obj = $(this);
                h=0-parseInt(h);
                setInterval(function(){
                    if (i<0) {
                        obj.css("top",i+"px");     
                        i=i+speed;       
                    }
                    else{
                       i=h;
                    }
                },1);
            }
	});
});