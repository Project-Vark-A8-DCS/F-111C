local dev = GetSelf()
-- -- init and do
-- dofile(LockOn_Options.script_path.."../command_defs.lua")

-- dofile(LockOn_Options.script_path.."device_init.lua")


local refresh = 0.01

make_default_activity(refresh)
local Armed = 0
local sensor_data = get_base_data()


-- -- -- local Armed = 0
-- dev:listen_command(Keys.TriggerOn)

-- dev:listen_command(Keys.PickleOn)

-- dev:listen_command(Keys.ArmOn)










function post_initialize()

	print_message_to_user("Init - WS")
	
end

-- function update()
--     if launch == 1 then
--         print_message_to_user("Armed")
--     end
-- end


-- function SetCommand(command,value)

--     -- if command == Keys.PickleOn then
--     --     launch = 1
--     -- else
--     --     launch = 0
--     -- end
--     -- print_message_to_user(tostring(command))

    
-- end


need_to_be_closed = false -- close lua state after initialization