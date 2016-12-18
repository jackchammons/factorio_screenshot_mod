--game coordinates
--(-1,-1)(0,-1)(1,-1)
--(-1,0) (0,0) (1,0)
--(-1,1) (0,1) (1,1)

--screenshot coordinates
--(2,0)(2,1)(2,2)
--(1,0)(1,1)(1,2)
--(0,0)(0,1)(0,2)

script.on_init(function()
	local width = 600
	local height = 300
	local center_x = 0
	local center_y = 0	
	
	local square_size = 50
	local rez = 32*square_size
	
	for i=0,((width/square_size)-1) do 
		for j=0,((height/square_size)-1) do		
			local name = j..","..((width/square_size)-i-1)..".png"
			local x_pos = (width/2) - ((square_size/2) + square_size*i) + center_x
			local y_pos = (height/2) - ((square_size/2) + square_size*j) + center_y
			game.take_screenshot{show_entity_info = true, resolution = {x = rez, y = rez}, position = {x = x_pos, y = y_pos}, path = name}
		end
	end
	print("finished")
end)