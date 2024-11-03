function exe_return_buffs_struct()
{
	//buff description [visibility value bonus 0,]
	var _buffs_values =
		{	
			//structure			[0pos used for visibility,deactivating execution],
			underwater :		[0,"",],
			overwater :			[0,"",],
			curious :			[10,"",],
			inspector :			[10,"",],
			spy :				[10,"",],
			move :				[0,"",],
			attack :			[0,"",],
			concealed :			[5,"",],
			spell1 :			[0,"",],
			embark_overwater :	[0,"",],
			embarked :			[0,"",],
			unsplitable :		[0,"",],
		}
	return(_buffs_values);
}

//buff list notepad
/*
"underwater" - observations
"overwater" - observations

"curious" - finding resources, cargo, group dependency
"inspector" - finding cargo, counting units

*/