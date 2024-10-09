dofile(LockOn_Options.script_path.."LCOS/Indicator/definitions.lua")

local TST  		 = MakeMaterial(nil,{220,220,220,5})

local SHOW_MASKS = true


local x_size        = 1 * LTOS_SCALE	--MFD_SIZE-- * MFD_SCALE
local y_size        = 1 * LTOS_SCALE	--MFD_SIZE --* MFD_SCALE
local corner		= 0.6


local vert		= {	{-x_size, y_size * corner},
					{ x_size, y_size * corner},
					{ x_size,-y_size * corner},
					{-x_size,-y_size * corner},
					
					{-x_size, 		y_size * corner},
					{ x_size, 		y_size * corner},
					{ x_size * corner, y_size},
					{-x_size * corner, y_size},
					
					{-x_size, 		-y_size * corner},
					{ x_size, 		-y_size * corner},
					{ x_size * corner,-y_size},
					{-x_size * corner,-y_size},
				}
local indi		 	= {	0, 1, 2, 0, 2, 3,
						4, 5, 6, 4, 6, 7,
						8, 9, 10, 8, 10, 11,
						} --default_box_indices

LTOS_base               	= CreateElement "ceSimple"
LTOS_base.name			= "LTOS_base"
LTOS_base.init_pos		= {0,0,0}
Add(LTOS_base)

---------------------------------------------------
local 	total_field_of_view 				= CreateElement "ceMeshPoly"
		total_field_of_view.name 			= "total_field_of_view"
		total_field_of_view.primitivetype 	= "triangles"
		total_field_of_view.vertices		= vert
		total_field_of_view.indices		 	= indi									
		total_field_of_view.material		= MakeMaterial(nil,{0,0,0,0})
		total_field_of_view.h_clip_relation = h_clip_relations.REWRITE_LEVEL
		total_field_of_view.level			= LTOS_DEFAULT_NOCLIP_LEVEL--MDF_FOV_LEVEL
		total_field_of_view.isdraw			= true
		total_field_of_view.collimated 		= false
		total_field_of_view.isvisible		= true --false 
		total_field_of_view.parent_element	= "LTOS_base"
	Add(total_field_of_view)
---------------------------------

local 	black_background     			= CreateElement "ceTexPoly"
		black_background.primitivetype 	= "triangles"
		black_background.name			="black_background"
		black_background.init_pos		= {0,0,0}
		black_background.material      	= MakeMaterial(nil,{0, 0, 0, 0})
		black_background.vertices		= vert
		black_background.indices    	= indi
		black_background.parent_element = "LTOS_base"
		black_background.h_clip_relation= h_clip_relations.INCREASE_IF_LEVEL
		black_background.level	  		= LTOS_DEFAULT_NOCLIP_LEVEL--MDF_FOV_LEVEL
	Add(black_background)