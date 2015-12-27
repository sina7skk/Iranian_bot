do local function run(msg, matches)
	local message = '#نظرات\n\n'
	.."Name:  "..msg.from.print_name.."\n"
	.."User:  @"..msg.from.username.."\n"
	.."ID:  "..msg.from.id.."\n"
	.."\n\n"..matches[1]
	local userid = 'user#id147509695'
	send_large_msg(userid, message)
	return "پیام شما با موفقیت ارسال شد"
end
 return {
	description = "Feedback System",
	usage = {
		"!feedback (message)",
	},
	patterns = {
		"^[!/]feedback (.*)$",
	},
	run = run,
}
end
