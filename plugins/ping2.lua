
local function run(msg, matches)
if matches[1] == 'ping' then
   tdcli.sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './bot/ping.mp4','💥pong! spłÐΞЯ Is Online :)💥➖➖➖🔥ℓσcкєятєαм🔥', dl_cb, nil)
end
    end

return {
  patterns = {
 "^[/!#](ping)$",
 "^(ping)$",
  },
  patterns_fa = { 
},
  run = run
}

