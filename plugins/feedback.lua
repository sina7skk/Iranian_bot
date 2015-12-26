local fuse = "#نظرات\n"
.."Username: @"..msg.from.username.."\n"
.."Name: "..msg.from.print_name.."\n"
.."ID: "..msg.from.id.."\n\n"
.."Letters :\n"..matches[1]


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
    "^[!/]feedback (.*)$"

  },
  run = run
}

end
