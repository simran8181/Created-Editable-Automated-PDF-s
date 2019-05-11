public class characterfrequency 
{
    public static void countchar()
    {
		List<String> nameArray = new List<String>{'A','B','C','D','A','B','A','A','A','A'};
		Map<String,Integer> Count = new Map<String,Integer>();

		for(String key : nameArray)
		{
    		if(!Count.containsKey(key))
        	{
    			Count.put(key,0);
    		}
   	 		Integer currentInt=Count.get(key)+1;
    		Count.put(key,currentInt);
		}
        system.debug(count);
    }

}