function _init()
	speedx,speedy = 0,0
	shipx,shipy = 63,63
end

function _draw()
	cls()
	spr(1,shipx,shipy)
end

function _update()
	speedx= 0
	speedy= 0
	if btn(0) then
		speedx = -2
	end
	if btn(1) then
		speedx = 2
	end
	if btn(2) then
		speedy = -2
	end
	if btn(3) then
		speedy = 2
	end
	
	shipx=shipx+speedx
	shipy=shipy+speedy
	
	if shipx>=120 then
		shipx = 0
	end
	if shipx<=0 then
		shipx = 120
	end
end
