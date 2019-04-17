minetest.register_privilege("notify", {
	description = "Can use the notice commands",
	give_to_singleplayer = false,
	give_to_admin = true,
})

minetest.register_chatcommand("notice", {
	description = "Sends a notice in chat",
	params = "<msg>",
	privs = {notify = true},
	func = function(name, param)
		minetest.chat_send_all(minetest.colorize("#2b74ff", "[NOTICE] "..param))
	end,
})

minetest.register_chatcommand("warn", {
	description = "Sends a warning in chat",
	params = "<msg>",
	privs = {notify = true},
	func = function(name, param)
		minetest.chat_send_all(minetest.colorize("red", "[WARNING] "..param))
	end,
})