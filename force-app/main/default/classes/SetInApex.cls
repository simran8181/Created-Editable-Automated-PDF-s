public class SetInApex 
{
	public void check()
    {
        Set<String> s1 = new Set<String>();
		s1.add('simran');
		s1.add('siddharth');
        System.debug('Set 1 :'+s1);

		Set<String> s2 = new Set<String>(s1);
		// The set elements in s2 are copied from s1
		System.debug('Set 2 :'+s2);
        //containsAll(setToCompare),containsAll(listToCompare)
        boolean result1 = s1.containsAll(s2);
        System.debug('Two sets are equal or not :'+result1);
        
        List<Integer> l1 = new List<Integer>();
		l1.add(81);
		l1.add(91);
		Set<Integer> s3 = new Set<Integer>(l1);
        System.debug('Fetching the records from list to Set 3 :'+s3);
        boolean result = s3.contains(81);
        System.debug('Checking the record is present in set or not :'+result);
        
        Set<Integer> s4 = new Set<Integer>();
        s4.addAll(s3);//same for the list
        System.debug('Fetching all the records from set3 to Set4 :'+s4);

        boolean result3 =s3.Equals(s4);   
        System.debug('Two sets are equal or not :'+result3);
        
        integer hashcode = s4.hashcode();
        system.debug('Hashcode of s4 is :'+hashcode);
        
        boolean empty = s4.isEmpty();
        system.debug('Set4 is empty or not  :'+empty);
        
        //removeAll(setOfElementsToRemove),removeAll(listOfElementsToRemove)
        Boolean result4 = s4.removeAll(s3);
        system.debug(s3);
        system.debug(s4);

        
        
        
    }
}