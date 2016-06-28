 --[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄       dev ½  🔴 @A7mEd_B98 🔴 
         ch { @dev_ahmed_98 } 
            ▀▄ ▄▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]] 

 do 

local function pre_process(msg) 
    --Checking mute 
    local hash = 'mate:'..msg.to.id 
    local ali = 'mate:'..msg.to.id 
    local oscar = 'mate:'..msg.to.id 
    local bot = 'mate:'..msg.to.id 
    local oscarteam = 'mate:'..msg.to.id 
    local oscarbot = 'mate:'..msg.to.id 
    if redis:get(hash) and not is_momod(msg) and msg.media  then 
            delete_msg(msg.id, ok_cb, true) 
            end 
    if redis:get(ali) and not is_momod(msg) and msg.media and msg.media.type == 'photo' then 
            delete_msg(msg.id, ok_cb, true) 
            end 
    if redis:get(oscar) and not is_momod(msg) and msg.media and msg.media.type == 'audio' then 
            delete_msg(msg.id, ok_cb, true) 
            end 
    if redis:get(bot) and not is_momod(msg) and msg.media and msg.media.type == 'video' then 
            delete_msg(msg.id, ok_cb, true) 
            end 

    if redis:get(oscarteam) and not is_momod(msg) and msg.media and msg.media.type == 'unsupported' then 
            delete_msg(msg.id, ok_cb, true) 
            end 

    if redis:get(oscarbot) and not is_momod(msg) and msg.media and msg.media.type == 'document' then 
            delete_msg(msg.id, ok_cb, true) 
        end 
        return msg  --By @iq_plus and @oscarbotv2 
    end 

local function oscar(msg, matches) 
    chat_id =  msg.to.id 
    if matches[1] == 'lock media' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:set(hash, true) 
                    return "تم كتم الوسائط صور🏔.صوت🎤.فيديو📽...الخ\n\n بواسطة : @"..msg.from.username
  elseif is_momod(msg) and matches[1] == 'unlock media' then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
       return "تم الغاء كتم الوسائط✅💯\n\n بواسطة : @"..msg.from.username
  elseif is_momod(msg) and matches[1] == 'lock photo' then 
      local ali = 'mate:'..msg.to.id 
      redis:set(ali, true) 
      return "تم منع الصور\n\n✅💯 بواسطة : @"..msg.from.username
  elseif is_momod(msg) and matches[1] == "unlock photo" then 
      local ali = 'mate:'..msg.to.id 
      redis:del(ali) 
      return "تم الغاء كتم الصور🔓✅💯\n\n بواسطة : @"..msg.from.username
  elseif is_momod(msg) and matches[1] == "lock audio" then 
      local oscar = 'mate:'..msg.to.id 
      redis:set(oscar, true) 
      return "تم منع الصوت✅💯\n\n بواسطة : @"..msg.from.username
  elseif is_momod(msg) and matches[1] == "unlock audio" then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
      return "تم الغاء كتم الصوتيات✅✳️\n\n بواسطة : @"..msg.from.username
  elseif is_momod(msg) and matches[1] == "lock video" then 
      local bot = 'mate:'..msg.to.id 
      redis:set(bot, true) 
      return "تم كتم الفيديوهات🔒✅💯\n\n بواسطة : @"..msg.from.username
  elseif is_momod(msg) and matches[1] == "unlock video" then 
      local bot = 'mate:'..msg.to.id 
      redis:del(bot) 
      return "تم الغاء كتم الفيديوهات✅💯\n\n بواسطة :@"..msg.from.username
  elseif is_momod(msg) and matches[1] == "lock sticker" then 
      local oscarteam = 'mate:'..msg.to.id 
      redis:set(oscarteam, true) 
      return "تم منع الملصقات🔒✅💯\n\n بواسطة :@"..msg.from.username
      -- by @dev_ahmed_98
  elseif is_momod(msg) and matches[1] == "unlock sticker" then 
      local oscarteam = 'mate:'..msg.to.id 
      redis:del(oscarteam) 
      return "تم الغاء كتم الملصقات🔓✅💯\n\n بواسطة : @"..msg.from.username
  elseif is_momod(msg) and matches[1] == "lock file" then 
      local oscarbot = 'mate:'..msg.to.id 
      redis:set(oscarbot, true) 
      return "تم كتم الملفات🔒✅💯\n\n بواسطة : @"..msg.from.username
  elseif is_momod(msg) and matches[1] == "unlock file" then 
      local oscarbot = 'mate:'..msg.to.id 
      redis:del(oscarbot) 
      return "تم الغاء كتم الملفات🔓✅💯\n\n بواسطة : @"..msg.from.username

end 

end 

return { 
    patterns = { 
        '^(lock media)$', 
        '^(unlock media)$', 
        '^(lock photo)$', 
        '^(unlock photo)$', 
        '^(lock audio)$', 
        '^(unlock audio)$', 
        '^(lock video)$', 
        '^(unlock video)$', 
        '^(lock sticker)$', 
        '^(unlock sticker)$', 
        '^(lock file)$', 
        '^(unlock file)$' 
    }, 
    run = oscar, 
    pre_process = pre_process 
} 
end 
 