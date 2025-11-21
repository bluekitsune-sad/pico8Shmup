function _init()
	speed = 0
	shipx,shipy = 63,63
end

function _draw()
	cls()
	spr(1,shipx,shipy)
end

function _update()
	speed = 0
	if btn(0) then
		speed = -2
	end
	if btn(1) then
		speed = 2
	end
	
	shipx=shipx+speed
	
	if shipx>=120 then
		shipx = 0
	end
	if shipx<=0 then
		shipx = 120
	end
end
