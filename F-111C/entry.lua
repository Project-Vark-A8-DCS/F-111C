self_ID = "F-111C"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("F-111C"),
developerName = _("Project Vark (A8)"),

fileMenuName = _("F-111C"),
update_id        = "F-111C",
version		 = "Testing",
state		 = "installed",
info		 = _("More is to be developed"),

Skins	=
	{
		{
		    name	    = _("F-111C"),
			dir		    = "Theme"
		},
	},
Missions =
	{
		{
			name		= _("F-111C"),
			dir			= "Missions",
  		},
	},
LogBook =
	{
		{
			name		= _("F-111C"),
			type		= "F-111C",
		},
	},	
		
InputProfiles =
	{
		["F-111C"] = current_mod_path .. '/Input/F-111C',
	},	
})
-------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/F-111C")
mount_vfs_texture_path  (current_mod_path.."/Textures/F111Pit")
mount_vfs_sound_path    (current_mod_path.."/Sounds")
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/LUA/Views_F111Pit.lua")
make_view_settings('F-111C', ViewSettings, SnapViews)
make_flyable('F-111C',current_mod_path..'/Cockpit/Scripts/', {nil, old = 54}, current_mod_path..'/comm.lua') -- SFM + Su-25T Avionics
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/F-111C.lua')
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Weapons/AGLoadout.lua")
-------------------------------------------------------------------------------------
local cfg_path =current_mod_path.."/FM/F15/config.lua"
dofile(cfg_path)
-------------------------------------------------------------------------------------
plugin_done()
