function run(msg, matches)
	local fuse = "#feedback\n\n"
	.."Name: "..msg.from.print_name.."\n"
	.."User: @"..msg.from.username.."\n"
	.."ID: "..msg.from.id
	.."\n==============================\n\n"..matches[1]
	send_large_msg('user#id147509695', fuse, ok_cb, false)
	return 'پیام شما با موفقیت ارسال شد'
end

return {
  description = "Feedback System",
  usage = "!feedback (message) : send your feedback",
  patterns = {
    "^[!/]feedback (.*)$"
  },
  run = run
}
end
