--[[
       _               _                      _            _  ___   ___  _    
  __ _| |__   ___  ___| | ___ __ ___  _ __   (_) __ _     / |/ _ \ / _ \| | __
 / _` | '_ \ / _ \/ __| |/ / '__/ _ \| '_ \  | |/ _` |    | | | | | | | | |/ /
| (_| | |_) | (_) \__ \   <| | | (_) | |_) | | | (_| |    | | |_| | |_| |   < 
 \__,_|_.__/ \___/|___/_|\_\_|  \___/| .__/  |_|\__, |____|_|\___/ \___/|_|\_\
                                     |_|           |_|_____|
—]]
do

local function pre_process(msg)
    
    --Checking mute
    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg)  then
            delete_msg(msg.id, ok_cb, true)
            return 
        end
    
        return msg
    end
local function iq_100k(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'قفل التوجيه' then
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    local text = '<b> ¦  تم فتح التوجيه بنجاح </b>📮 \n <b>¦ بواسطه ⚠️ : </b> @'..(msg.from.username or "erorr")..'\n<b>→→→→⚙️SV4→→→→</b> \n <b>¦ جديدنا </b> 📚 @porgramer2017'
                    return reply_msg(msg.id, text, ok_cb, false) 
  elseif is_momod(msg) and matches[1] == 'فتح التوجيه' then
      local hash = 'mate:'..msg.to.id
      redis:del(hash)
local text = '<b> ¦  تم فتح التوجيه بنجاح </b>✖️ \n <b>¦ بواسطه ⚠️ : </b> @'..(msg.from.username or "erorr")..'\n<b>→→→→⚙️SV4→→→→</b> \n <b>¦ جديدنا </b> 📚 @porgramer2017'
return reply_msg(msg.id, text, ok_cb, false) 
end

end

return {
    patterns = {
        '^(قفل التوجيه)$',
        '^(فتح التوجيه)$'
    },
    run = iq_100k,
    pre_process = pre_process
}
end
--[[
       _               _                      _            _  ___   ___  _    
  __ _| |__   ___  ___| | ___ __ ___  _ __   (_) __ _     / |/ _ \ / _ \| | __
 / _` | '_ \ / _ \/ __| |/ / '__/ _ \| '_ \  | |/ _` |    | | | | | | | | |/ /
| (_| | |_) | (_) \__ \   <| | | (_) | |_) | | | (_| |    | | |_| | |_| |   < 
 \__,_|_.__/ \___/|___/_|\_\_|  \___/| .__/  |_|\__, |____|_|\___/ \___/|_|\_\
                                     |_|           |_|_____|
—]]
