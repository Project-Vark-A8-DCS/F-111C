--put this line into your device_init.lua
--dofile(LockOn_Options.script_path.."avRWR_example/rwrexample_device_init.lua")

--[[
in the part where you define your AC, you need to specify the radar:


Sensors = {
		RADAR = "N-019", -- Radar type
		--RADAR = "AN/APQ-159",
		},

]]--

		


		
creators[130]	= 	{"avSimpleElectricSystem",
LockOn_Options.script_path.."avRWR_example/miscSystems/simple_electric_system.lua"}

   
creators[140]	  = {"avSimpleRWR",
LockOn_Options.script_path.."avRWR_example/device/RWR_init.lua"}						
------------------------------------------------------------------------------------------------------------								  
-- INDICATORS ----------------------------------------------------------------------------------------------
----
