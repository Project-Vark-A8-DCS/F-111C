local dev = GetSelf()
local sensor_data = get_base_data()

local update_time_step = 0.02
make_default_activity(update_time_step)


function update()
    local mach = sensor_data.getMachNumber()
    local altitude = sensor_data.getBarometricAltitude()
    local sweep

    if mach > 1 then
        sweep = 1
        
    elseif mach >0.8 and mach < 1 and altitude > 20000 then
        sweep = 0.5

    elseif mach >0.8 and mach < 1 and altitude < 20000 then
        sweep = mach / 1.77

    elseif mach < 0.8 then
        sweep = 0
    end

    set_aircraft_draw_argument_value(8, sweep)

end    

need_to_be_closed = false