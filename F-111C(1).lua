
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
average_fuel_consumption        = 0.271,            -- average fuel consumption
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
     pos                           = {5.25, 1.0, -0.42},
 }, -- end of [1]
 [2]=
 {
     ejection_seat_name            = 9,
     pilot_name                    = 19,
     drop_canopy_name              = "su-24-fonar-r",
     pos                           = {5.25, 1.0, 0.42},            -- changes the position of the cockpit view    
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
	aerodynamics = -- F15
		{
			Cy0	=	0,                            --Base lateral force coefficient (typically represents the side force coefficient at zero AoA and 0 sideslip)
			Mzalfa	=	5.8,                      --Pitching moment coefficient derivative with respect to the AoA (how pitching moment changes the AoA)
			Mzalfadt	=	1.2,                  --Pitching moment coefficient derivative with respect to the rate of change of the AoA
			kjx = 3.1,                            --Roll damping coefficient (represents the damping effect in the roll axis)
			kjz = 0.0015,                         --Yaw damping coefficient (represents the damping effect in the yaw axis)
			Czbe = -0.018,                        --Yaw moment coefficient derivative with respect to sideslip angle
			cx_gear = 0.021,                      --Incremental drag coefficient due to the landing gear being deployed
			cx_flap = 0.06,                       --Incremental drag coefficient due to the flaps being deployed
			cy_flap = 0.30,                       --Incremental lift coefficient due to the flaps being deployed
			cx_brk = 0.07,                        --Incremental drag coefficient due to the airbrake being deployed
			table_data = 
			{
			--      M	 Cx0		 Cya		 B		 B4	      Omxmax	Aldop	Cymax
				{0.0,	0.01,		0.055,		0.02,		0.09,	0.65,	24.0,	1.1 	}, --M: Mach Number
				{0.2,	0.01,		0.09,		0.02,		0.09,	1.80,	24.0,	1.1     }, --Cx0: Zero-lift drag coefficient (how much drag with no lift)
				{0.4,	0.01,		0.09,		0.02,	   	0.09,	3.00,	24.0,	1.1     }, --Cya: Lift coefficient derivative with respect to the AoA (lift increases whilst AoA increases)
				{0.6,	0.01,		0.09,		0.02,		0.09,	4.20,	24.0,	1.1     }, --B: Induced drag factor or coefficient (how much extra drag is created because of wing's)
				{0.7,	0.01,		0.09,		0.02,		0.09,	4.20,	22.0,	1.05    }, --B4: Higher-order induced drag factor (complicated version of B)
				{0.8,	0.01,		0.09,		0.02,		0.09,	4.20,	20.5,	1.0     }, --Omxmax: Max roll rate
				{0.9,	0.027,		0.053,		0.1,		0.22,	4.20,	19.0,	1.00    }, --Aldop: Max allowable AoA
				{1.0,	0.0320,		0.062,		0.17,		0.15,	4.20,	18.9,	1.04    }, --Cymax: Max lift coefficient (most amount of lift)
				{1.1,	0.0430,		0.062,	   	0.235,		0.09,	3.78,	17.4,	1.02    }, 
				{1.2,	0.0460,		0.062,	   	0.285,		0.08,	2.94,	17.0,	1.00 	}, 
				{1.3,	0.0470,		0.06,	   	0.29,		0.10,	2.10,	16.0,	0.92 	},				
				{1.4,	0.0470,		0.056,	   	0.3,		0.136,	1.80,	15.0,	0.80 	},					
				{1.6,	0.0470,		0.052,	   	0.34,		0.21,	1.08,	13.0,	0.7 	},					
				{1.8,	0.0460,		0.042,	   	0.34,		2.43,	0.96,	12.0,	0.55 	},		
				{2.2,	0.0420,		0.037,	   	0.49,		3.5,	0.84,	 10.0,	0.37 	},					
				{2.5,	0.0420,		0.033,		0.6,		4.7,	0.84,	 9.0,	0.3 	},		
				{3.9,	0.0400,		0.023,		0.9,		6.0,	0.84,	 7.0,	0.2		},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	       =	67.5,
			MinRUD	   =	0,
			MaxRUD	   =	1,
			MaksRUD	   =	0.85,
			ForsRUD	   =	0.91,
			type	   =	"TurboFan",
			hMaxEng	   =	19.5,
			dcx_eng	   =	0.0114,
			cemax	   =	1.24,
			cefor	   =	2.56,
			dpdh_m	   =	6000,
			dpdh_f	   =	14000.0,
			table_data = {
			--   M		Pmax		 Pfor
				{0.0,	115000,		212000},
				{0.2,	 94000,		200000},
				{0.4,	 92000,		205000},
				{0.6,	103000,		207000},
				{0.7,	105000,		210000},
				{0.8,	105000,		220000},
				{0.9,	105000,		235000},
				{1.0,	107000,		250000},
				{1.1,	103000,		258000},
				{1.2,	 94000,		268000},
				{1.3,	 84000,		285000},
				{1.4,	 71000,		300000},
				{1.6,	 34000,		318000},
				{1.8,	 19000,		337000},
				{2.2,	 17000,		370000},
				{2.5,	 19000,		390000},
				{3.9,	 82000,		310000},
			}, -- end of table_data
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