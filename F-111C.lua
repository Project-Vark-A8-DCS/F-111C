--mounting 3d model paths and texture paths 
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/F-111C")
mount_vfs_model_path	(current_mod_path.."/Cockpit/Shapes")
mount_vfs_sound_path    (current_mod_path.."/Sounds")

F111C = {
    Name          = 'F-111C',
    DisplayName   = ('F-111C'),
    Picture       = "F-111C.png",
    Rate          = 30,
    Shape         = "F-111C",
    WorldID       = WSTYPE_PLACEHOLDER,

    shape_table_data =
    {
        {
            file          = 'F-111C';
            life          = 22;
            vis           = 3;
            desrt         = 'su-24mr-oblomok';
            fire          = {300,2};
            username      = 'F-111C';
            index         = WSTYPE_PLACEHOLDER;
            classname     = "lLandPlane";
            positioning   = "BYNORMAL";
        },
        {
            name   = "su-24mr-oblomok";
            file   = "su-24mr-oblomok";
            fire   = {240,2};
        },
    },

    LandRWCategories = 
    {
    [1]      = 
    {
        Name = "AircraftCarrier",
    },
    [2]      = 
    {
        Name = "AircraftCarrier With Catapult",
    }, 
    [3]      = 
    {
        Name = "AircraftCarrier With Tramplin",
    }, 
},
    TakeOffRWCategories = 
    {
    [1] = 
    {
        Name = "AircraftCarrier",
    },
    [2] = 
    {
        Name = "AircraftCarrier With Catapult",
    }, 
    [3] = 
    {
        Name = "AircraftCarrier With Tramplin",
    }, 
},

mapclasskey = "P0091000025",
attribute   = {wsType_Air, wsType_Airplane, wsType_Fighter, wsType_Bomber, WSTYPE_PLACEHOLDER, "Multirole fighters", "Refuelable"},
Categories  = {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
----------------------

M_empty                         = 21319,            -- (empty weight of F-111C in KG)
M_nominal                       = 36141,            -- (empty with max fuel and crew)
M_max                           = 49900,            -- (MTOW of F-111C)
M_fuel_max                      = 14741,            -- (Internal fuel only)
H_max                           = 20000,            -- (Maximum Altitude)

length                          = 22.4,                                       -- full length in m
height                          = 6.2,                                        -- height in m
wing_area	=	61,
wing_span	=	19.2,
wing_tip_pos                    = {-4.38635,	0.839957,	8.77139},            -- wingtip coords for visual effects N/A currently
wing_type                       = 1,                                          -- FIXED_WING = 0 / VARIABLE_GEOMETRY = 1 / FOLDED_WING = 2 / ARIABLE_GEOMETRY_FOLDED = 3
flaps_maneuver                  = 0.5,                                        -- Max flaps in take-off and maneuver (0.5 = 1st stage; 1.0 = 2nd stage) (for AI)
has_speedbrake                  = true,

RCS                             = 4,                -- Radar Cross section m2. Proportionally scaled RCS of F-16's 4.0.
IR_emission_coeff               = 1,                -- Normal engine -- IR_emission_coeff = 1 is su-27 without afterburner. It is reference.
IR_emission_coeff_ab            = 1.5,              -- with afterburner

stores_number                   = 9,                -- amount of pylons/hardpoints

CAS_min                         = 102.9,            -- minimal indicated airspeed in m/s? 200 knots for F-111C
V_opt                           = 265,              -- cruise speed (for AI)
V_take_off                      = 78,               -- Take off speed in m/s (for AI)
V_land                          = 72,               -- Landing speed in m/s (for AI)
V_max_sea_level                 = 365.278,          -- max speed at sea level in m/s (for AI)
V_max_h                         = 857.5,            -- max speed at altitude in m/s (for AI)
Vy_max                          = 324.1,            -- max climb speed in m/s (for AI)
Mach_max                        = 2.5,              -- max mach speed (for AI)
Ny_min                          = -3.5,             -- minimum g (for AI)
Ny_max                          = 7,                -- maximum g (for AI)
Ny_max_e                        = 7,                -- maximum g (for AI)
AOA_take_off                    = 0.16,             -- AoA in take off (for AI)
bank_angle_max                  = 60,               -- maximum bank angle (for AI)
range                           = 2000,             -- maximum range (for AI)

thrust_sum_max                  = 8119.3034,        -- thrust in kgf
has_afterburner                 = true,
has_differential_stabilizer     = false,
thrust_sum_ab                   = 11385.168,        -- thrust in kgf with afterburner
average_fuel_consumption        = 0.001,            -- average fuel consumption
is_tanker                       = false,
tanker_type                     = 1,                -- tanker type
air_refuel_receptacle_pos       = {0.4935, 1.492, -0.4238},           -- receptacle for plane

launch_bar_connected_arg_value  = 0.87,

tand_gear_max = 2.75,

nose_gear_pos 				                = {4.13786,	-1.80268,	0},   		-- Nosegear coord {4.13786,	-1.58281,	0}
nose_gear_amortizer_direct_stroke   		=  0,  								    -- Down from nose_gear_pos
nose_gear_amortizer_reversal_stroke  		=  -0.233838,  					    -- Up 
nose_gear_amortizer_normal_weight_stroke 	=  -0.21,   						-- Down from main_gear_pos
nose_gear_wheel_diameter 	                =  0.626, 						    -- In m

main_gear_pos 						 	    = {-3.9622, -2.02038, 1.5}, 	    -- Main gear coords 
main_gear_amortizer_direct_stroke	 	    =   0, 								-- Down from main_gear_pos
main_gear_amortizer_reversal_stroke  	    = 	-0.585, 						-- Up 
main_gear_amortizer_normal_weight_stroke    =   -0.55,							-- Down from main_gear_pos
main_gear_wheel_diameter 				    =   1.1, 						    -- In m

mechanimations = {
    Door0 = {
        {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
        {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
        {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
    },
    FoldableWings = {
        {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "in", 5.0}}}}, Flags = {"Reversible"}},
        {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 15.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
    },
}, -- end of mechanimations

engines_count                       = 2,
engines_nozzles                     =
{
 [1] =
 {
     pos                           = {-10.1225, 0.33541, -0.777894},    -- nozzle coords
     elevation                     = 0.36,                              -- AFB cone elevation
     diameter                      = 0.89,                              -- AFB cone diameter
     exhaust_length_ab             = 9,                                 -- length in m
     exhaust_length_ab_k           = 0.76,                              -- AB animation
     smokiness_level               = 0.2,                               -- engine smoke
     afterburner_circles_count     = 5,                                 -- amount of afterburner rings
 }, -- end of [1]
 [2] =                              
 {
     pos                           = {-10.1225, 0.33541, 0.777894},     -- nozzle coords
     elevation                     = 0.36,                              -- AFB cone elevation
     diameter                      = 0.89,                              -- AFB cone diameter
     exhaust_length_ab             = 9,                                 -- length in m
     exhaust_length_ab_k           = 0.76,                              -- AB animation
     smokiness_level               = 0.2,                               -- engine smoke
     afterburner_circles_count     = 5,                                 -- amount of afterburner rings
 }, -- end of [2]
}, -- end of engines_nozzles


crew_members                       =
{
 [1]=
 {
     ejection_seat_name            = 9,
     pilot_name                    = 19,
     drop_canopy_name              = "su-24-fonar-1",
     pos                           = {-5.25, 1.0, -0.42},
 }, -- end of [1]
 [2]=
 {
     ejection_seat_name            = 9,
     pilot_name                    = 19,
     drop_canopy_name              = "su-24-fonar-r",
     pos                           = {-5.25, 1.0, 0.42},            -- changes the position of the cockpit view    
 }, -- end of [2]
}, --end of crew_members

fires_pos =
{
    [1] =     {-0.095,	-0.798,	0},     -- Fuselage
    [2] =     {-1.4,	0.721,	0.797},     -- wing (inner?) right, WING_R_IN
    [3] =     {-0.825,	0.738,	-0.683},     -- wing (inner?) left, WING_L_IN
    [4] =     {-0.82,	0.265,	2.774},     -- Wing center Right? {-0.82,    0.265,    2.774},
    [5] =     {-0.82,	0.265,	-2.774},     -- Wing center Left?  {-0.82,    0.265,    -2.774},
    [6] =     {-0.82,	0.255,	4.274},     -- Wing outer Right? {-0.82,    0.255,    4.274}, probably WING_R_OUT
    [7] =     {-0.82,	0.255,	-4.274},     -- Wing outer Left?  {-0.82,    0.255,    -4.274}, probably WING_L_OUT
    [8] =     {-5.432,	0.099,	0.483},     -- High Altitude Contrails
    [9] =     {-5.432,	0.099,	-0.483},     -- left engine
    [10] =    {-0.14,	0.67,	1.45},      -- Right Engine? {0.304,    -0.748,    0.442},
    [11] =    {-0.14,	0.23,	-1.45},      -- ?
}, --end of fires_pos


effects_presets = {
    {effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/F111_overwingVapor.lua"},
},

passivCounterm            = {
    CMDS_Edit             = true,
    SingleChargeTotal     = 60,
    chaff                 = {default = 26, increment = 26, chargeSz = 1},
    flare                 = {default = 26, increment = 26, chargeSz = 1},
},

chaff_flare_dispenser = 
{
[1] =
{
    dir = 	{0,	1,	0},
    pos = 	{-7.209065,	0.817383,	-1.093740},
}, -- end of [1]
[2] =
{
    dir = 	{0,	1,	0},
    pos = 	{-7.209065,	0.817383,	1.093740},
    }, -- end of [2]
}, -- end of chaff_flare_dispenser

Sensors = {
    --RADAR = "AN/APG-53A",
    IRST                  = "AN/APG-73",
    OPTIC                 = "Harrier GR_5 FLIR", 
    RWR                   = "Abstract RWR",
},

laserEquipment =
	{
		laserRangefinder = true,
		laserDesignator  = true,
	},

    Countermeasures = {
        ECM 			= "AN/ALQ-165"
        },

        Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency 		= 127.5,  -- Radio Freq
		editable 		= true,
		minFrequency	= 100.000,
		maxFrequency 	= 156.000,
		modulation 		= MODULATION_AM
	},

    Tasks = {                           -- defined in db_units_planes.lua, nothing is #15
aircraft_task(CAP),                 -- Task #11 in ME
aircraft_task(CAS),                 -- Task #31
aircraft_task(SEAD),                -- Task #29
aircraft_task(Reconnaissance),
aircraft_task(GroundAttack),        -- Task #32
aircraft_task(AFAC),                -- Task #16
aircraft_task(RunwayAttack),
aircraft_task(AntishipStrike),
aircraft_task(Refueling),           -- Task #13
aircraft_task(Escort),

},

DefaultTask = aircraft_task(GroundAttack),

SFM_Data = {
	aerodynamics = -- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
		{
			Cy0			=	0,      -- zero AoA lift coefficient
			Mzalfa		=	4.355,  -- coefficients for pitch agility
			Mzalfadt	=	0.8,    -- coefficients for pitch agility
			kjx			=	2.3,    
			kjz			=	0.0011, 
			Czbe		=	-0.014, -- coefficient, along Z axis (perpendicular), affects yaw, negative value means force orientation in FC coordinate system
			cx_gear		=	0.3,    -- coefficient, drag, gear
			cx_flap		=	0.08,   -- coefficient, drag, full flaps
			cy_flap		=	0.4,    -- coefficient, normal force, lift, flaps
			cx_brk		=	0.08,   -- coefficient, drag, breaks
			table_data  = 
			{	--      M		Cx0		 	Cya			B		 	B4	    	Omxmax		Aldop		Cymax
				[1] = 	{0.0,	    0.024,	0.07,	0.075,	0.12,	0.5,											30					,	1.2},
				[2] = 	{0.2,	0.024,	0.07,	0.075,	0.12,	1.5,										30					,	1.2},
				[3] = 	{0.4,	0.024,	0.07,	0.075,	0.12,	2.5,										30					,	1.2},
				[4] = 	{0.6,	0.0239,	0.073,	0.075,	0.12,	3.5,										30					,	1.2},
				[5] = 	{0.7,	0.024,	0.076,	0.075,	0.12,	3.5,										28.666666666667		,	1.18},
				[6] = 	{0.8,	0.0235,	0.079,	0.075,	0.12,	3.5,										27.333333333333		,	1.16},
				[7] = 	{0.9,	0.025,	0.083,	0.075,	0.125,	3.5,										26					,	1.14},
				[8] = 	{1.0	,0.044,	0.085,	0.14,	0.1,	3.5,										24.666666666667		,	1.12},
				[9] = 	{1.05,	0.0465,	0.0855,	0.1775,	0.125,	3.5,										24					,	1.11},
				[10] = 	{1.1,	0.049,	0.086,	0.215,	0.15,	3.15,										18			,	1.1},
				[11] = 	{1.2,	0.049,	0.083,	0.228,	0.17,	2.45,										17,	1.05},
				[12] = 	{1.3,	0.049,	0.077,	0.237,	0.2,	1.75,										16,	1},
				[13] = 	{1.5,	0.0475,	0.062,	0.251,	0.2,	1.5,										13,	0.9},
				[14] = 	{1.7,	0.045166666666667,	0.051333333333333,	0.24366666666667,	0.32,	0.9,	12,	0.7},
				[15] = 	{1.8,	0.044,	0.046,	0.24,	0.38,	0.86,										11.4,	0.64},
				[16] = 	{2,	0.043,	0.039,	0.222,	2.5,	0.78,											10.2,	0.52},
				[17] = 	{2.2,	0.041,	0.034,	0.227,	3.2,	0.7,										9,	0.4},
				[18] = 	{2.5,	0.04,	0.033,	0.25,	4.5,	0.7,										9,	0.4},
				[19] = 	{3.9,	0.035,	0.033,	0.35,	6,		0.7,										9,	0.4},
			}, -- end of table_data
			-- M - Mach number
			-- Cx0 - Coefficient, drag, profile, of the airplane
			-- Cya - Normal force coefficient of the wing and body of the aircraft in the normal direction to that of flight. Inversely proportional to the available G-loading at any Mach value. (lower the Cya value, higher G available) per 1 degree AOA
			-- B - Polar quad coeff
			-- B4 - Polar 4th power coeff
			-- Omxmax - roll rate, rad/s
			-- Aldop - Alfadop Max AOA at current M - departure threshold
			-- Cymax - Coefficient, lift, maximum possible (ignores other calculations if current Cy > Cymax)
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	62, -- RPM at idle
			MinRUD	=	0, -- Min state of the throttle
			MaxRUD	=	1, -- Max state of the throttle
			MaksRUD	=	0.85, -- Military power state of the throttle
			ForsRUD	=	0.91, -- Afterburner state of the throttle
			typeng	=	1,
			--[[
				E_TURBOJET = 0
				E_TURBOJET_AB = 1
				E_PISTON = 2
				E_TURBOPROP = 3
				E_TURBOFAN				= 4
				E_TURBOSHAFT = 5
			--]]
			
			hMaxEng	=	19, -- Max altitude for safe engine operation in km
			dcx_eng	=	0.0124, -- Engine drag coeficient
			cemax	=	1.24, -- not used for fuel calulation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			cefor	=	2.56, -- not used for fuel calulation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			dpdh_m	=	2000, --  altitude coefficient for max thrust
			dpdh_f	=	4200,  --  altitude coefficient for AB thrust
			table_data = 
			{		--   M		Pmax		 Pfor	
				[1] = 	{0,	88000,	141000},
				[2] = 	{0.2,	80000,	143000},
				[3] = 	{0.4,	79000,	150000},
				[4] = 	{0.6,	82000,	165000},
				[5] = 	{0.7,	90000,	177000},
				[6] = 	{0.8,	94000,	193000},
				[7] = 	{0.9,	96000,	200000},
				[8] = 	{1,	100000,	205000},
				[9] = 	{1.1,	100000,	214000},
				[10] = 	{1.2,	98000,	222000},
				[11] = 	{1.3,	100000,	235000},
				[12] = 	{1.5,	98000,	258000},
				[13] = 	{1.8,	94000,	276000},
				[14] = 	{2,	88000,	283000},
				[15] = 	{2.2,	82000,	285000},
				[16] = 	{2.5,	80000,	287000},
				[17] = 	{3.9,	50000,	200000},
			}, -- end of table_data
			-- M - Mach number
			-- Pmax - Engine thrust at military power
			-- Pfor - Engine thrust at AFB
		}, -- end of engine
    },

    DamageParts = 
	{  
		[1] = "su-24-oblomok-wing-r", -- wing R
		[2] = "su-24-oblomok-wing-l", -- wing L
	},
	

	lights_data = {
        typename = "collection",
        lights = {
            [WOLALIGHT_NAVLIGHTS] = {
                typename = "collection",
                lights = {
                    {
                        typename = "collection",
                        lights = {
                            {
                                -- typename = "argumentlight", argument = 192,
                            },
                            {
                                typename = "argumentlight", argument = 190,
                            },
                            {
                                typename = "argumentlight", argument = 191,
                            },
                        },
                    },
                },
            },
			[WOLALIGHT_STROBES] = {
				typename = "collection",
				lights = {
					-- 0 -- Anti-collision strobe
					{typename = "natostrobelight", argument = 83, period = 2.2, phase_shift = 0, color = {0.8, 0.0, 0.0}, intensity_max = 35},	-- Anti-collision strobe
				},		 
			},
            [WOLALIGHT_SPOTS] = {
                typename = "collection",
                lights = {
                    {
                        typename = "argumentlight", argument = 208,
                        exposure = {{0, 0.9, 1.0}}, movable = true,
                    },
					{
                        typename = "argumentlight", argument = 209,
                        exposure = {{0, 0.9, 1.0}}, movable = true,
                    },
					{
                        typename = "argumentlight", argument = 203,
                        exposure = {{0, 0.9, 1.0}}, movable = true,
                    },
                },
            },
            [WOLALIGHT_TAXI_LIGHTS] = {
                typename = "collection",
                lights = {
                    {
                        typename = "argumentlight", argument = 208,
                        exposure = {{0, 0.9, 1.0}}, movable = true,
                    },
					{
                        typename = "argumentlight", argument = 209,
                        exposure = {{0, 0.9, 1.0}}, movable = true,
					},	
                }, 
            },
        },
    },
}

add_aircraft(F111C)