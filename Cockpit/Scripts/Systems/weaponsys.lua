dofile(LockOn_Options.common_script_path.."devices_defs.lua")
dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()

local update_time_step = 0.02
make_default_activity(update_time_step)

dev:listen_command(Keys.TriggerOn)
dev:listen_command(Keys.PickleOn)
dev:listen_command(Keys.ArmOn)
dev:listen_command(Keys.ModeIterate)
dev:listen_command(Keys.ModeSelected)
dev:listen_command(Keys.ModeAll)
local stations_selected = {} -- for selected mode
local Armed = 0
local mode = 0
local k = 0 -- for iterate
function post_initialize()
    print_message_to_user("WS init")
end

function SetCommand(command,value)
    if command == Keys.ArmOn then
        Armed = 1
    end
    if command == Keys.ModeAll then
        mode = 0
    end
    if command == Keys.ModeIterate then
        mode = 1
    end
    if command == Keys.ModeSelected then
        mode = 2
    end
    if command == Keys.PickleOn then
        fire = 1 
        k = k + 1
    elseif command ~= Keys.PickleOn then
        fire = 0
    end
    if command == Keys.StationOne then
        table.insert(stations_selected,1)
    end
    if command == Keys.StationTwo then
        table.insert(stations_selected,2)
    end
    if command == Keys.StationThree then
        table.insert(stations_selected,3)
    end
    if command == Keys.StationFour then
        table.insert(stations_selected,4)
    end
    if command == Keys.StationFive then
        table.insert(stations_selected,5)
    end
    if command == Keys.StationSix then
        table.insert(stations_selected,6)
    end
    if command == Keys.StationSeven then
        table.insert(stations_selected,7)
    end
    if command == Keys.StationEight then
        table.insert(stations_selected,8)
    end
    if command == Keys.StationNine then
        table.insert(stations_selected,9)
    end
    if command == Keys.StationTen then
        table.insert(stations_selected,10)
    end
    if command == Keys.StationEleven then
        table.insert(stations_selected,11)
    end
end

function update()
    if Armed == 1 and mode == 0 and fire == 1 then -- all
        for i = 1,11 do
            dev:launch_station(i-1)
        end
    else if
       Armed == 1 and mode == 1 and fire ==1 then -- single iterate
            dev:launch_station(k-1)


    else if mode == 2 and Armed == 1 and fire ==1  then -- selected 
        for i in stations_selected do
            dev:launch_station(i-1)
        end
        
    end
    
end
    end
end


need_to_be_closed = false