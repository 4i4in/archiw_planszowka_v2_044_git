// exe_copy_seed_to_clipboard
function exe_copy_seed_to_clipboard()
{
	clipboard_set_text(	string(random_get_seed())	);
}