
function run(msg, matches)

local fuse = '#نظرات \n\nusername : ' .. msg.from.@username .. '\n\nName : ' .. msg.from.print_name ..'\n\nLetters :\n\n\n' .. matches[1] 
local fuses = '!printf user#id' .. msg.from.id


    local text = matches[1]
 bannedidone = string.find(msg.from.id, '123')
        bannedidtwo =string.find(msg.from.id, '465')       
   bannedidthree =string.find(msg.from.id, '678')  


        print(msg.to.id)

        if bannedidone or bannedidtwo or bannedidthree then                    --for banned people
                return 'You are banned to send a feedback'
	else


                 local sends0 = send_large_msg('user#id147509695', fuse, ok_cb, false)

 return 'پیام شما با موفقیت ارسال شد'

     

end

end
return {
  description = "Feedback",

  usage = "!feedback message",
  patterns = {
    "^!/[Ff]eedback (.*)$"

  },
  run = run
}

end
