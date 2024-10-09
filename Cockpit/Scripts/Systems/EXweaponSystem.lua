dofile(LockOn_Options.common_script_path.."devices_defs.lua")
dofile(LockOn_Options.script_path.."devices.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local refresh = 0.1
local dev = GetSelf()
make_default_activity(refresh)

local sensor_data = get_base_data()

--constante armement
local Bomblevel1 = 4
local Bomblevel2 = 5
local Bomblevel3 = 9

local Rocketlevel1 = 4
local Rocketlevel2 = 7
local Rocketlevel3 = 33

local BidonLevel1  = 1
local BidonLevel2  = 3
local BidonLevel3  = 43

local Fox2Level1 = 4
local Fox2Level2 = 4
local Fox2Level3 = 7
--------------------

local buttonpres_in   = 8500
local buttonpres_out  = 8501

dev:listen_command(buttonpres_in)
dev:listen_command(buttonpres_out)

dev:listen_command(device_commands.MASTER_ARM)
dev:listen_command(device_commands.INTERVAL)

dev:listen_command(device_commands.EMERJET)

local MasterArm = 0
local INTERVAL = 0
local INTERVAL_time = 0
local INT = 0
local condition_release = 0



local SPAWingR      = 0
local SPAWingL      = 0
local SidewinderSeq = 0
local ir_missile_lock_param = get_param_handle("WS_IR_MISSILE_LOCK")

local jettison = 0

local release = 0 


dev:listen_command(78)
local smoke_CMD
local smokeison


function post_initialize()

  sndhost = create_sound_host("COCKPIT_ARMS","HEADPHONES",0,0,0)
  aim9seek = sndhost:create_sound("Aircrafts/F-111/F_111_aim9_lo")
  aim9lock = sndhost:create_sound("Aircrafts/F-111/F_111_aim9_hi")
  print_message_to_user("WSinit")
  local birth = LockOn_Options.init_conditions.birth_place
  if birth == "GROUND_HOT" or birth == "AIR_HOT" then
  elseif birth=="GROUND_COLD" then
  end
end


function update()
----------------------------------------------

----------------------------------------------
 -- local station_info1     = dev:get_station_info(1)

  --print_message_to_user(station_info1.weapon.level1..","..station_info1.weapon.level2..","..station_info1.weapon.level3..","..station_info1.count)
  --print_message_to_user(station_infoLW.weapon.level1..","..station_infoLW.weapon.level2..","..station_infoLW.weapon.level3..","..station_infoLW.count)
----------------------------------------------
  if INTERVAL == -1 then
    INTERVAL_time = 0.5
  elseif INTERVAL == 0 then
    INTERVAL_time = 1.0
  elseif INTERVAL == 1 then
    INTERVAL_time = 2.0
  end
---------------------------------------------- 
-------------------------------------------------------------------------------------------------------------------
 

  --print_message_to_user(Release_order_1..","..Release_order_2..","..Release_order_3..","..Release_order_4..","..Release_order_5)
-------------------------------------------------------------------------------------------------------------------
  if MasterArm == 1 and SPAWingR == 0 and SPAWingL == 0 then
----------------------------------------------
    if station_info1.weapon.level1 == Rocketlevel1 and station_info1.weapon.level2 == Rocketlevel2 and station_info1.weapon.level3 == Rocketlevel3 then
      if SPA1 == 1 and release == 1 then
        dev:launch_station(1)
      end
    elseif station_info1.weapon.level1 == Bomblevel1 and station_info1.weapon.level2 == Bomblevel2 and station_info1.weapon.level3 == Bomblevel3 then
      if SPA1 == 1 and release == 1 and INT == (INTERVAL_time/refresh) * Release_order_1 then
        dev:launch_station(1)
      end
    end
    if SPA1 == -1 and release == 1 then
      dev:emergency_jettison(1)
    end
----------------------------------------------
    if station_info2.weapon.level1 == Rocketlevel1 and station_info2.weapon.level2 == Rocketlevel2 and station_info2.weapon.level3 == Rocketlevel3 then
      if SPA2 == 1 and release == 1 then
        dev:launch_station(2)
      end
    elseif station_info2.weapon.level1 == Bomblevel1 and station_info2.weapon.level2 == Bomblevel2 and station_info2.weapon.level3 == Bomblevel3 then
      if SPA2 == 1 and release == 1 and INT == (INTERVAL_time/refresh) * Release_order_2 then
        dev:launch_station(2)
      end
    end
    if SPA2 == -1 and release == 1 then
      dev:emergency_jettison(2)
    end
----------------------------------------------
    if station_info3.weapon.level1 == Rocketlevel1 and station_info3.weapon.level2 == Rocketlevel2 and station_info3.weapon.level3 == Rocketlevel3 then
      if SPA3 == 1 and release == 1 then
        dev:launch_station(3)
      end
    elseif station_info3.weapon.level1 == Bomblevel1 and station_info3.weapon.level2 == Bomblevel2 and station_info3.weapon.level3 == Bomblevel3 then
      if SPA3 == 1 and release == 1 and INT == (INTERVAL_time/refresh) * Release_order_3 then
        dev:launch_station(3)
      end
    end
    if SPA3 == -1 and release == 1 then
      dev:emergency_jettison(3)
    end
----------------------------------------------
    if station_info4.weapon.level1 == Rocketlevel1 and station_info4.weapon.level2 == Rocketlevel2 and station_info4.weapon.level3 == Rocketlevel3 then
      if SPA4 == 1 and release == 1 then
        dev:launch_station(4)
      end
    elseif station_info4.weapon.level1 == Bomblevel1 and station_info4.weapon.level2 == Bomblevel2 and station_info4.weapon.level3 == Bomblevel3 then
      if SPA4 == 1 and release == 1 and INT == (INTERVAL_time/refresh) * Release_order_4 then
        dev:launch_station(4)
      end
    end
    if SPA4 == -1 and release == 1 then
      dev:emergency_jettison(4)
    end
----------------------------------------------
    if station_info5.weapon.level1 == Rocketlevel1 and station_info5.weapon.level2 == Rocketlevel2 and station_info5.weapon.level3 == Rocketlevel3 then
      if SPA5 == 1 and release == 1 then
        dev:launch_station(5)
      end
    elseif station_info5.weapon.level1 == Bomblevel1 and station_info5.weapon.level2 == Bomblevel2 and station_info5.weapon.level3 == Bomblevel3 then
      if SPA5 == 1 and release == 1 and INT == (INTERVAL_time/refresh) * Release_order_5 then
        dev:launch_station(5)
      end
    end
    if SPA5 == -1 and release == 1 then
      dev:emergency_jettison(5)
    end
----------------------------------------------
  elseif MasterArm == 1 then
    if station_infoRW.weapon.level1 == Fox2Level1 and station_infoRW.weapon.level2 == Fox2Level2 and station_infoRW.weapon.level3 == Fox2Level3 and station_infoRW.count ~= 0 and SPAWingR == 1 then
      if release == 1 and SidewinderSeq == 0 and station_infoRW.count ~= 0 then
        dev:launch_station(6)
        SidewinderSeq = 1
      end
      dev:select_station(6)
      if ir_missile_lock_param:get() == 0 and station_infoRW.count ~= 0 then
        aim9seek:play_continue()
        aim9lock:stop()
      elseif ir_missile_lock_param:get() == 1 and station_infoRW.count ~= 0 then
        aim9seek:stop()
        aim9lock:play_continue()
      else
        aim9seek:stop()
        aim9lock:stop()
      end
    elseif station_infoLW.weapon.level1 == Fox2Level1 and station_infoLW.weapon.level2 == Fox2Level2 and station_infoLW.weapon.level3 == Fox2Level3 and station_infoLW.count ~= 0 and SPAWingL == 1 then
      if release == 1 and SidewinderSeq == 0 and station_infoLW.count ~= 0 then
        dev:launch_station(0)
        SidewinderSeq = 1
      end
      dev:select_station(0)
      if ir_missile_lock_param:get() == 0 and station_infoLW.count ~= 0 then
        aim9seek:play_continue()
        aim9lock:stop()
      elseif ir_missile_lock_param:get() == 1 and station_infoLW.count ~= 0 then
        aim9seek:stop()
        aim9lock:play_continue()
      else
        aim9seek:stop()
        aim9lock:stop()
      end
    else
      dev:select_station(0)
      aim9seek:stop()
      aim9lock:stop()
      dev:select_station(6)
      aim9seek:stop()
      aim9lock:stop()
    end
    if release == 0 then
      SidewinderSeq = 0
    end
  else
    dev:select_station(0)
    aim9seek:stop()
    aim9lock:stop()
    dev:select_station(6)
    aim9seek:stop()
    aim9lock:stop()
  end
----------------------------------------------

  if release == 1 then
    INT = INT + 1
  else
    INT = 0
  end

----------------------------------------------
  if jettison == 1 then
    dev:emergency_jettison(1)
    dev:emergency_jettison(2)
    dev:emergency_jettison(3)
    dev:emergency_jettison(4)
    dev:emergency_jettison(5)
  end
----------------------------------------------
end


function SetCommand(command, value)
----------------------------------------------  
  if command == buttonpres_in then
    release = 1
  end
----------------------------------------------
  if command == buttonpres_out then
    release = 0
  end
----------------------------------------------
  if command == 78 then
    dev:launch_station(8)
    if smoke_CMD == 0 then
      smoke_CMD = 1
    else
      smoke_CMD = 0
    end
  end
end

need_to_be_closed = false -- close lua state after initialization
