pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
cls()
::q::

a=64+32*sin(t()/2)-rnd(128)
b=64+32*cos(t()/2)-rnd(128)
z=atan2(a,b)+t()/4
line(64,64,rnd(128)+cos(z)*4,rnd(128)+sin(z)*4,11)
flip()
goto q
