antilink = {}— An empty table for solving multiple kicking problem
 
do
local function run(msg, matches)
  if is_momod(msg) then — Ignore mods,owner,admins
    return
  end
  local data = load_data(_config.moderation.data)
  if data[tostring(msg.to.id)]['settings']['lock_link'] then
    if data[tostring(msg.to.id)]['settings']['lock_link'] == 'yes' then
      if antilink[msg.from.id] == true then
        return
      end
      send_large_msg("chat#id".. msg.to.id , "link is not allowed here")
      local name = user_print_name(msg.from)
      savelog(msg.to.id, name.." ["..msg.from.id.."] kicked (link was locked) ")
      chat_del_user('chat#id'..msg.to.id,'user#id'..msg.from.id,ok_cb,false)
      antilink[msg.from.id] = true
      return
    end
  end
  return
end
local function cron()
  antilink = {} — Clear antilink table
end
return {
  patterns = {
    "(https://telegram.me/joinchat/,)"
    },
  run = run,
  cron = cron
}
 
end
