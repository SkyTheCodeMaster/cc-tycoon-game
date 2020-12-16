local winSlide = {}

function winSlide.slide(win,amount,delay)
  local curX,curY = win.getPosition()
  if amount < 0 then
    for i=1,math.abs(amount) do
      win.reposition(curX-i,curY)
      if delay then
        sleep(delay)
      end
    end
  else
    for i=1,amount do
      win.reposition(curX+i,curY)
      if delay then
        sleep(delay)
      end
    end
  end 
end

return winSlide
