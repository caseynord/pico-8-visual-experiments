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
 ax=h
 ay=h-(t+i)+20
 cx=h+(t+i)*0.86
 cy=h+(t+i)*0.5
 f=h-(t+i)*0.86
	if (ay<h+9) c=9 -- point at which color is changed
 	line(ax,ay,cx,cy,c) --right-front/left-back
 	line(cx,cy,f,e,c) --bottom/top
 	line(ax,ay,f,e,c) --left-front/right-back
	end
flip() --syncs 30 frames per second
	--t=(t-1) --inverted draw
	--t=(t-1)%20 --inverted draw infinite
	--t=(t+1) --finite draw
 t=(t+1)%20 --infinite draw
 goto _

