dofile(LockOn_Options.script_path.."command_defs.lua")

local dev = GetSelf()
local sensor_data = get_base_data()

dev:listen_command(Keys.HookToggle)

local Hook = 0

local update_time_step = 0.02 -- (50 times/s)
make_default_activity(update_time_step)

function post_initialize()
    print_message_to_user("Tailhook init")
end

function SetCommand(command,value)
    if command == Keys.HookToggle then
        print_message_to_user("Hook toggle")
        if Hook == 0 then Hook = 1 else  Hook = 0 end
    end


end

function update()
    local tailHookPos = get_aircraft_draw_argument_value(25)

    if Hook == 1 then
--        print_message_to_user("Hook toggle function")
        tailHookPos = tailHookPos + 0.009
        set_aircraft_draw_argument_value(25, tailHookPos)

    elseif Hook == 0 then
        tailHookPos = tailHookPos - 0.009
        set_aircraft_draw_argument_value(25, tailHookPos)

    end
end

need_to_be_closed = false