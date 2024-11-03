//case for prompting questionfor execution
function exe_goto_editor_step0_ask_yn()
{
	if lclick_cooldown_counter < 1
		{
			yes_no_srceen = 1;
			yes_no_prompt = "Going to begining of editor. \n New map will be generated. \n Sure to prceed?\n Progress will be lost	\n choose to continue	\n or cancel";
			yes_no_exe = "exe_goto_editor_step0";
			lclick_cooldown_counter = lclick_cooldown;
		}
}