do

function run(msg, matches)
       if not is_momod(msg) then
        return "مجاز برای مدیر و ادمین ها"
       end
	  local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "اول باید لینک جدید ایجاد کنید"
       end
         local text = "لینک گروه :\nقدرت برگرفته از ادوان\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
end

return {
  patterns = {
    "^(لینک خصوصی)$"
  },
  run = run
}

end
--Copyright and edit; @behroozyaghi
--Persian Translate; @behroozyaghi
--ch : @nod32team
--کپی بدون ذکر منبع حرام است
