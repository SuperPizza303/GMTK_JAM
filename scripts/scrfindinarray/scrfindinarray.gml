function scrFindInArray(array, value)
{
	if is_array(array)
	{
		for (var i = 0; i < array_length(array); i++) 
		{
			if array[i] == value
			{
				return i
			}
		}
		return noone
	}
	else
	{
		return noone	
	}
}