local electric_system = GetSelf()

function post_initialize()
  print_message_to_user("Electric system loaded")
  -- This is so the Electric system is always on
  electric_system:AC_Generator_1_on(true)
  electric_system:AC_Generator_2_on(true)
  electric_system:DC_Battery_on(true)
end

function update()
	--print_message_to_user("Update Electric System")
end