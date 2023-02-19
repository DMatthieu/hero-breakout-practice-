pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
--hero breakout
--a lazy dev's lesson

ball_x=1
ball_dx=2
ball_y=33
ball_dy=2
ball_r=2
ball_dr=1
ball_c=10

function _init()
 cls()
end

function _update()
 ball_x=ball_x+ball_dx
 ball_y=ball_y+ball_dy 
 
 ball_r+=ball_dr
 

 if ball_x > 127 or ball_x < 0 then
  ball_dx = -ball_dx
 end
 if ball_y > 127 or ball_y < 0 then
  ball_dy = -ball_dy
 end

 if ball_r > 2.5 or ball_r < 2 then
  ball_dr = -ball_dr
 end


 
end

function _draw()
 cls()
 circfill(ball_x,ball_y,
 									ball_r,ball_c)
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
