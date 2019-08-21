pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
--triangle corners:
--	top = a
-- left = b
-- right = c

t=0 --cycles shapes
h=64 --half of screen
::_::
cls()
c=13 --color
for i=-4*h,4*h,20 do
 topx=h
 bottomx=h-(t+i)*0.86
 ay=h-(t+i)+20
 cx=h+(t+i)*0.86
 cy=h+(t+i)*0.5
	if (ay<h+9) c=9 -- point at which color is changed
 	line(topx,ay,cx,cy,c) --right-front/left-back
 	line(cx,cy,f,cy,c) --bottom/top
 	line(topx,ay,f,cy,c) --left-front/right-back
	end
flip() --syncs 30 frames per second
	--t=(t-1) --inverted draw
	--t=(t-1)%20 --inverted draw infinite
	--t=(t+1) --finite draw
 t=(t+1)%20 --infinite draw
 goto _

