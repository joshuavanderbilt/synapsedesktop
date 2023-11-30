-- Config and version info
vendor = "TurronTech"
productname = "Synapse Desktop"
version = 0.01

fullname = vendor .. " " .. productname .. " " .. version

function shutdown()
	print("Shutting down...")
	os.exit()
end
function love.load()
	wallpaper = love.graphics.newImage("wallpaper.png")
	officon = love.graphics.newImage("shutdown.png")
	love.window.setTitle(fullname)
end
function love.draw()
	-- Desktop
	love.graphics.draw(wallpaper, 0, 0)
        love.graphics.print(fullname,580,550)
	-- debug info comment out after testing
	love.graphics.print("Mouse X: "..love.mouse.getX() .. " Mouse Y: "..love.mouse.getY(), 20, 20)
	-- Icons
	officonx = 726
	officony = 10
	love.graphics.draw(officon,726,10)
end
function love.mousepressed(mx, my, button)
   if button == 1
   and mx >= officonx and mx < officonx + officon:getWidth()
   and my >= officony and my < officony + officon:getHeight() then
   	shutdown()
   end
end

