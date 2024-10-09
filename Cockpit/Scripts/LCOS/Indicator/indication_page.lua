dofile(LockOn_Options.script_path.."LCOS/Indicator/definitions.lua")

RS = LTOS_SCALE

-- Materials
GUN_PIPPER_ORANGE		= MakeMaterial(nil,{255, 121, 30, 200})


local radius = 0.2 * RS

mfd_base_LTOS            	= CreateElement "ceSimple"
mfd_base_LTOS.name			= "mfd_base_LTOS"
mfd_base_LTOS.init_pos		= {0,0,0}
Add(mfd_base_LTOS)	
	
-- Function parameters:  (objectName, radius, thickness, material, vertices, size)

-- radius = 0.25 * RS	
-- addCircle("Circle1", radius, 0.01, GUN_PIPPER_ORANGE, 48, 360)

-- radius = 0.4 * RS	
-- addCircle("Circle2", radius, 0.01, GUN_PIPPER_ORANGE, 48, 360)

-- -- function addLine(objectname, size, pos, rot, material)


addLine(1, {-0.6,-0.5}, 0, GUN_PIPPER_ORANGE)
-- addLine("TopLine", 1, {0.6,-0.5}, 0, GUN_PIPPER_ORANGE)

-- addLine("TopLine", 0.5, {0.9,-0.5}, 90, GUN_PIPPER_ORANGE)

addCircle({0.0, 0.0, 0.0}, {0.01, 1}, {0, math.pi * 2}, math.pi * 4 / 16)
addCircle({0.0, 0.0, 0.0}, {34.5, 35.5}, {0, math.pi * 2}, math.pi * 4 / 64)
addCircle({0.0, 0.0, 0.0}, {17.5, 18.5}, {0, math.pi * 2}, math.pi * 4 / 64)


-- addLine("CrossLine", 1, {0.5,0}, 90, GUN_PIPPER_ORANGE)

