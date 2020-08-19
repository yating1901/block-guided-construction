function init() 
   if robot.id == 'block03' then
      robot.directional_leds.set_all_colors('orange')
   elseif robot.id == 'block10' then
      robot.directional_leds.set_all_colors('orange')
   elseif robot.id == 'block1' then
      robot.directional_leds.set_all_colors('green')
   elseif robot.id == 'block2' then
      robot.directional_leds.set_all_colors('green')
   elseif robot.id == 'block3' then
      robot.directional_leds.set_all_colors('green')
   elseif robot.id == 'block4' then
      robot.directional_leds.set_all_colors('green')
   elseif robot.id == 'block5' then
      robot.directional_leds.set_all_colors('green')
   elseif robot.id == 'block6' then
      robot.directional_leds.set_all_colors('green')
   elseif robot.id == 'block7' then
      robot.directional_leds.set_all_colors('green')
   elseif robot.id == 'block8' then
      robot.directional_leds.set_all_colors('green')
   elseif robot.id == 'block01' then
      robot.directional_leds.set_all_colors('green')
   elseif robot.id == 'block02' then
      robot.directional_leds.set_all_colors('green')  
   elseif robot.id == 'block9' then
      robot.directional_leds.set_all_colors('green')   
   else
      robot.directional_leds.set_all_colors('black')
   end
end
function step()
   for identifer, radio in pairs(robot.radios) do
      if #radio.rx_data > 0 then
         configuration = string.char(radio.rx_data[1][1])
         -- debug
         print('received ' .. configuration .. ' on ' .. identifer)
         -- debug
         if configuration == '0' then
            robot.directional_leds.set_all_colors('black')
         elseif configuration == '1' then
            robot.directional_leds.set_all_colors('magenta')
         elseif configuration == '2' then
            robot.directional_leds.set_all_colors('orange')
         elseif configuration == '3' then
            robot.directional_leds.set_all_colors('green')
         elseif configuration == '4' then
            robot.directional_leds.set_all_colors('blue')
         end
      end
   end
end
function reset()
end
function destroy()
end