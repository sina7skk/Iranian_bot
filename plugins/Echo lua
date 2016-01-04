local function run(msg, matches)
 local text = matches[2]
 if matches[1] == "echo" then
  return text
 else
  local file = io.open("./data/"..matches[1], "w")
  file:write(text)
  file:flush()
  file:close()
  return send_document("chat#id"..msg.to.id,"./data/"..matches[1], ok_cb, false)
 end
end

return {
 description = "Simplest plugin ever!",
 usage = {
  "!echo [text] : return text",
  "!echo> [ext] [text] : save text to file",
 },
 patterns = {
  "^[!/](echo) (.*)$",
  "^[!/]echo> ([^%s]+) (.*)$",
 },
 run = run
}
