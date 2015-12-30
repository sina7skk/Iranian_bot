local function run(msg)
    if not is_momod(msg) then
        chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        return 'don't send link in this chat'
    end
end

return {patterns = {
    "https://telegram.me/joinchat/",
    }, run = run}
