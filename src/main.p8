function _init()
	speed = 0
	x,y = 63,63
end

function _draw()
	cls()
	spr(1,x,y)
end

function _update()
	speed = 0
	if btn(0) then
		speed = -2
	end
	if btn(1) then
		speed = 2
	end
	
	x=x+speed
	
	if x>=120 then
		x = 0
	end
	if x<=0 then
		x = 120
	end
end
