dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.common_script_path.."tools.lua")
dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device.lua")


-- set panel
layoutGeometry = {}


---------------------------------------------
MainPanel = {"ccMainPanel",LockOn_Options.script_path.."mainpanel_init.lua"}

creators = {}

creators[devices.WING_SWEEP]				= {"avLuaDevice",			LockOn_Options.script_path.."Systems/simple_wingsweep.lua"}
creators[devices.WEAPON_SYSTEM]				= {"avSimpleWeaponSystem",	LockOn_Options.script_path.."Systems/weaponsys.lua"}
creators[devices.ELECTRIC_SYSTEM] 			= {"avSimpleElectricSystem",LockOn_Options.script_path.."avRWR_example/miscSystems/simple_electric_system.lua"}
creators[devices.TAIL_HOOK]					= {"avLuaDevice",			LockOn_Options.script_path.."Systems/tailhook.lua"}

indicators = {} 

dofile(LockOn_Options.script_path.."avRWR_example/rwrexample_device_init.lua")

indicators[#indicators + 1] = {"ccIndicator", LockOn_Options.script_path.."avRWR_example/indicator/init.lua",	--init script
 nil, 
    {
		{"RADAR-PLASHKA-CENTER", "RADAR-PLASHKA-DOWN", "RADAR-PLASHKA-RIGHT"},	-- initial geometry anchor , triple of connector names. Mal zunächst nur 3 statt 4 ILS-PLASHKE-UP mal ausgelassen
		{sx_l =  0,  -- center position correction in meters (+forward , -backward)
		 sy_l =  0,  -- center position correction in meters (+up , -down)
		 sz_l =  0,  -- center position correction in meters (-left , +right)
		 sh   =  0,  -- half height correction 
		 sw   =  0,  -- half width correction 
		 rz_l =  0,  -- rotation corrections  
		 rx_l =  0,
		 ry_l =  0}
	}	
}

indicators[#indicators + 1] = {"ccIndicator", LockOn_Options.script_path.."LCOS/Indicator/init.lua",	--init script
 nil, 
    {
		{"PNT-HUD-CENTER", "PNT-HUD-DOWN", "PNT-HUD-RIGHT"},	-- initial geometry anchor , triple of connector names. Mal zunächst nur 3 statt 4 ILS-PLASHKE-UP mal ausgelassen
		{sx_l =  0,  -- center position correction in meters (+forward , -backward)
		 sy_l =  -0.03,  -- center position correction in meters (+up , -down)
		 sz_l =  -0.005,  -- center position correction in meters (-left , +right)
		 sh   =  0,  -- half height correction 
		 sw   =  0,  -- half width correction 
		 rz_l =  0,  -- rotation corrections  
		 rx_l =  0,
		 ry_l =  0}
	}	
}