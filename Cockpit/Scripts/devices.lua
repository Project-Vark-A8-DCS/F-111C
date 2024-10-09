local count = 0
local function counter()
	count = count + 1
	return count
end
-------DEVICE ID----------
devices = {}
devices["ELECTRIC_SYSTEM"] 		= counter()
devices["WEAPON_SYSTEM"]        = counter() --Nummer 4
devices["WEAPON_PANEL"]			= counter() --Nummer 5
devices["WING_SWEEP"]			= counter()
devices["TAIL_HOOK"]			= counter()

