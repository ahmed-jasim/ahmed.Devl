-- CODS CREATED BY @dev_ahmed_9898 thanks for @dev_ahmed_98
-- please join Channel  Team @dev_ahmed_98


do

local function run(msg, matches)
    local a = msg['id']
    
    if matches[1] == "chat_add_user" then
       local b = "هـَْـُلاٌٍے بيك حجي/ة نورت/ي @"..(msg.action.user.username or " ").."\n".."طب برجلك اليمنه وصلي ع محمد \n قناة الكـgяθυρـٍْـْْروب \n@dev_ahmed_98 "..msg.to.title 
         reply_msg(a,b,ok_cb,true)
         
    elseif matches[1] == "chat_add_user_link" then 
       local c ="هـَْـُلاٌٍے بيك حجي/ة نورت/ي @"..(msg.from.username or " ").."\n".."طب برجلك اليمنه وصلي ع محمد \n قناة الكـgяθυρـٍْـْْروب \n@dev_ahmed_98 "..msg.to.title
         reply_msg(a,c,ok_cb,true)
         
    elseif matches[1] == "chat_del_user" then
        local d = "ولك ايييي هسه ارتاحينه جنت حيل ثكيل ع معده"
        reply_msg(a,d,ok_cb,true)
end
end

return {  
  patterns = {
       "^!!tgservice (chat_add_user)$",
       "^!!tgservice (chat_add_user_link)$",
       "^!!tgservice (chat_del_user)$"
  },
  run = run,
}

end