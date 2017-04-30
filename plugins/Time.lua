--Begin Time.lua By @MahDiRoO
function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "💥No connection💥" end
local jdat = json:decode(url)
local text = '*🔥Ir Time:* _'..jdat.FAtime..'_\n*🔥Ir Data:* _'..jdat.FAdate..'_\n------------\n*🔥En Time:* _'..jdat.ENtime..'_\n *🔥En Data:* _'..jdat.ENdate.. '_\n'
  tdcli.sendMessage(msg.chat_id_, 0, 1, text, 1, 'md')
end
return {
  patterns = {
  "^[/!]([Tt][iI][Mm][Ee])$",
  "^([Tt][iI][Mm][Ee])$",
  "^(ساعت)$"
  }, 
run = run 
}
--End Time.lua--
