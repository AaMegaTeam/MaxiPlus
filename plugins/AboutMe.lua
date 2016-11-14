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
  if matches[1] == 'bot' then
  if redis:get("id:"..msg.to.id..":"..msg.from.id) then
return "<i>استفاده از این دستور هر دقیقه یکبار امکان پذیر است</i>"
end
redis:setex("id:"..msg.to.id..":"..msg.from.id, 60, true)
    if is_sudo(msg) then
    send_document(get_receiver(msg), "./data/me/version.webp", ok_cb, false)
      return "<b>M A X I M U S +\n---------------------------------------------\n|<i>An Advanced Bot Based On LUA</i>|\n\n <b>Developer</b> : [@Teshne | @AminPmResan_Bot]\n---------------------------------------------\n> <b>Channel</b> : @pedaret\n\n<i>Thanks To</i><b>B L A C K +</b>"
    elseif is_admin1(msg) then
    send_document(get_receiver(msg), "./data/me/admin.webp", ok_cb, false)
      return "You're Admin"
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "./data/me/owner.webp", ok_cb, false)
      return "You're Owner"
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "./data/me/mod.webp", ok_cb, false)
      return "You're Moderator"
    else
    send_document(get_receiver(msg), "./data/me/mmbr.webp", ok_cb, false)
      return "You're Just member :("
    end
  end
end

return {
  patterns = {
    "^[#!/]([Bb]ot)$",
    "^([Bb]ot)$"
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
