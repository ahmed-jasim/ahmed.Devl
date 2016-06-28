-- made by { @Mouamle }
do
ws = {}
rs = {}

-- some examples of how to use this :3 
ws[1] = "هلاو" -- msg 
rs[1] =  "هلاوو99وووات نورت/ي ❤️🙈" -- reply

ws[2] = "احمد" -- msg
rs[2] = "لو طالع لو نايم لو ع يوتيوب سويله تاك 🙈❤️" -- reply

ws[3] = "شلونكم" -- msg
rs[3] = "اني بالنسبة اليه دايح شوف بقيه الاعضااء 😂🖕" -- reply

ws[4] = "ضوجة" -- msg 
rs[4]= "شي اكيد الكبل ماكو 😂 لو بعدك/ج مازاحف/ة🙊😋" -- reply

ws[5] = "رفل" -- msg
rs[5] = "هاي ضلعة احمد  وادمونة الكـgяθυρـٍْـْْروب 😉😼" --reply

ws[6] = "سعلوه" -- msg
rs[6] = "بوووووووووو👽" --reply

ws[7] = "اكول" -- msg
rs[7] = "😂نجب" --reply

ws[8] = "اعشقج" -- msg
rs[8] = "👌😂هاااا الزاحف هاااا" --reply

ws[9] = "هاي" -- msg
rs[9] = "هايات مال درج خالتك/ج 😂🙃" --reply

ws[10] = "تفو" -- msg
rs[10] = "تفو💦 على جهرتك/ج الزفرة😡😡" --reply

ws[11] = "دي" -- msg
rs[11] = "اوك تعال/ي اركب عليك/ج🐸😂" --reply

ws[12] = "النخبة" -- msg
rs[12] = "اساطير وملوك التلي 👑TiQ" --reply

ws[13] = "منورين" -- msg
rs[13] = "نورك/ج حياتي مووووح💋😍" --reply

ws[14] = "شكو ماكو" -- msg
rs[14] = "والله سلامتك حياتي ماكو شي🙊" --reply

ws[15] = "🌚" -- msg
rs[15] = "الله يصخم وجهك اكثر من هذا الصخام" --reply

ws[16] = "🙈" -- msg
rs[16] = "فدوة للخجلان امواااااح😍💋" --reply

ws[17] = "احبج" -- msg
rs[17] = "واليحب بلوة😘" --reply

ws[18] = "وين الله وقسمتي" -- msg
rs[18] = "تروح يم عيونج الحلوه😍👀" --reply

ws[19] = "واسولفلج عليج هواي" -- msg
rs[19] = "وتبلل يواهس يمي عينج لاتغفة❤️😞" --reply

ws[20] = "احمد روك" -- msg
rs[20] = "فديييت ربة هاذا الضلع " --reply

ws[21] = "ملاك" -- msg
rs[21] = "خيمة الكروب هاي فديتها 😍👸🏼" --reply

ws[22] = "رنوش" -- msg
rs[22] = "ملكي 😌 يعني خط احمر اكطع 😌✌🏻❤️" --reply

ws[23] = "شخباركم" -- msg
rs[23] = "زينين بشوفت الطيبين😍❤️" --reply

ws[24] = "شكو ماكو" -- msg
rs[24] = "ماكو شي صافية دافية😜😉" --reply

ws[25] = "بوسني" -- msg
rs[25] = "امووووو💋ووووااااا💋اااححححح💋💋💋 عشق💋" --reply

ws[26] = "تحبني" -- msg
rs[26] = "غير اموت بدونك😞💔" --reply

ws[27] = "شكد" -- msg
rs[27] = "بكد السمه والكون 😻💞" --reply

ws[28] = "المعزوفة" -- msg
rs[28] = "رطوووووط 😂💃🏻رطاط رطاط💃🏻 رطووووووووط هله هله شد شد اي اي للكاع شد شد شعر رطاط 👯رطاط رطووووط شدها ولك شدها😜😂💃🏻💃🏻" --reply

ws[29] = "هلو" -- msg
rs[29] = "هلوات ع النبي👌🏼😆" --reply

-- the main function
function run( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
		if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		--send_large_msg ( R , rs[i] );
		--send_reply(msg.id, rs[i])
		reply_msg(msg.id, rs[i], ok_cb, false )
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "Mouamle" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made by @Mouamle" );
		end
	end 

end



return {
	patterns = {
		"(.*)"		
  	},
  	run = run
} 


end