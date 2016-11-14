--[[

     **************************
     *  BlackPlus Plugins...  *
     *                        *
     *     By @MehdiHS        *
     *                        *
     *  Channel > @Black_Ch   *
     **************************
	 
]]
do

local function run(msg, matches)
  if matches[1] == 'plist' or 'planlist' then
    send_document(get_receiver(msg), "/root/blackplus/data/me/payment.webp", ok_cb, false)
      return "<i>برای دریافت لیست قیمت ها</i>\n\n<i>به ربات @aminpmresan_botپی ام بدین</i>"
end
end
return {
  patterns = {
    "^[#!/]([Pp]list)$",
	"^[#!/]([Pp]lanlist)$",
    "^([Pp]list)$",
	"^([Pp]lanlist)$",

    },
  run = run
}
end
--[[

     **************************
     *  BlackPlus Plugins...  *
     *                        *
     *     By @MehdiHS        *
     *                        *
     *  Channel > @Black_Ch   *
     **************************
	 
]]
