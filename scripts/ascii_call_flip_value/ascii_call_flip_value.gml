//ascii call check pause time of var aaa
function ascii_call_flip_value()
{
	if array_get(ascii_pause,aaa) < 1
		{
			if array_get(ascii_call,aaa) = 0	{array_set(ascii_call,aaa,1)}
			else								{array_set(ascii_call,aaa,0)}
			array_set(ascii_pause,aaa,key_pause);
		}
}