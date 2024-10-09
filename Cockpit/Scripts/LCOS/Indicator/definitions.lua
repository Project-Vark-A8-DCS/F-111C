dofile(LockOn_Options.common_script_path.."elements_defs.lua")
SetScale(MILLYRADIANS)

LTOS_DEFAULT_LEVEL = 5
LTOS_DEFAULT_NOCLIP_LEVEL  = LTOS_DEFAULT_LEVEL - 1
LTOS_SCALE = 1.1--1


function AddElement(object)
    object.use_mipfilter    = true
	object.additive_alpha   = true
	object.h_clip_relation  = h_clip_relations.COMPARE
	object.level			= LTOS_DEFAULT_LEVEL
    Add(object)
end

----Colors--------------------------------
	BG_BLACK_COLOR		= {30, 30, 30, 255}
	TEXT_GREEN_COLOR 	= {0, 255, 20, 255}
	TEXT_BLACK_COLOR 	= BG_BLACK_COLOR--{2, 2, 2, 255}

------------------------------------------

MATERIAL_BLACK   	= MakeMaterial(nil,{25,25,25,255})
LTOS_BG_BLACK		= MakeMaterial(nil,BG_BLACK_COLOR)--{20,20,20,255})			
LTOS_SOLID_BLACK   	= MakeMaterial(nil,{0,0,0,255,255})

-- TODO: Make other functions to generate vertices, separate this code into different functions so it's easier to create more elements
function addLine(size, pos, rot, material)
	line 					= CreateElement "ceSMultiLine"
	line.name 			= create_guid_string()
	line.primitivetype 	= "triangles"
	line.vertices 		= { {0,0} , {0, size}}
	line.indices  		= default_box_indices
	line.init_pos 		= pos
	line.init_rot       = {rot}
	line.material 		= material
	line.h_clip_relation= h_clip_relations.COMPARE
	line.level			= LTOS_DEFAULT_LEVEL
	line.isdraw		 	= true
	Add(line)
end

function addCircle(position, radius, arc, segment)
	local ring			    = CreateElement "ceCircle"
    ring.name				= create_guid_string()
    ring.init_pos	        = position
    ring.radius			    = radius
    ring.arc				= arc
    ring.segment			= segment
    ring.gap				= segment
    ring.segment_detail	    = 4
    ring.dashed		        = false
    ring.material           = GUN_PIPPER_ORANGE
    Add(ring)
end

