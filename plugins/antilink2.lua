local function run(msg)
    if not is_momod(msg) then
    chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        return '⛔dont send link here⛔'
    end
end

return {patterns = {
    ".com",
    "http://",
    "https://",
    "adf.ly"
    }, run = run}
