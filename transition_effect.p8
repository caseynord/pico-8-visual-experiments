pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
function coloraverage(lx,ly)
	local a,b,c,d
	a=pget(lx,ly)
	b=pget(lx+1,ly)
	c=pget(lx,ly+1)
	d=pget(lx+1,ly+1)
	return ((a+b+c+d)/4)
end

function reassignpalette()
	for i=1,16 do
		pal(i-1,sub("0022556677665522",i,i),1)
	end
end

reassignpalette()
cls(15)
t=0
while t < 30000 do
	x=rnd(128)
	y=rnd(128)
	a=64+32*sin(time()/2)-x
	b=64+32*cos(time()/3)-y
	z=atan2(a,b)+time()/4
	line(x,y,x+cos(z)*4,y+sin(z)*4,coloraverage(x,y))
	t+=.1
end